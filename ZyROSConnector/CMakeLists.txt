cmake_minimum_required(VERSION 2.8.12)
project(ZyROSConnector)

set(ZY_ROSCONNECTOR_MAJOR_VERSION 0)
set(ZY_ROSCONNECTOR_MINOR_VERSION 2)
set(ZY_ROSCONNECTOR_VERSION ${ZY_ROSCONNECTOR_MAJOR_VERSION}.${ZY_ROSCONNECTOR_MINOR_VERSION})

set(HEADER_FILES
        init_ZyROSConnector.h
        ZyROSConnector.h
        ZyROSConnectorWorkerThread.h
        ZyROSConnectorTopicSubscriber.h
        ZyROSConnectorTopicSubscriber.inl
        ZyROSConnectorTopicPublisher.h
        ZyROSConnectorTopicPublisher.inl
        ZyROSConnectorServiceClient.h
        ZyROSConnectorServiceClient.inl
        ZyROSConnectorServiceServer.h
        ZyROSConnectorServiceServer.inl
)

set(SOURCE_FILES
    ZyROSConnector.cpp
    ZyROSConnectorServiceClient.cpp
    ZyROSConnectorServiceServer.cpp
    ZyROSConnectorTopicPublisher.cpp
    ZyROSConnectorTopicSubscriber.cpp
    ZyROSConnectorWorkerThread.cpp
)

# Build list of available ROS message types
SET(ROS_DISTRO "$ENV{ROS_DISTRO}")
if ("${ROS_DISTRO}" STREQUAL "")
    SET(ROS_DISTRO "melodic")
endif()

SET(ROS_INSTALL_PREFIX "$ENV{ROS_ROOT}")
if ("${ROS_INSTALL_PREFIX}" STREQUAL "")
    SET(ROS_INSTALL_PREFIX "/opt/ros/melodic")
endif()

message(STATUS "Generating ROS message and service type header files.")
if (ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS)
    message(STATUS "Adding define switch for ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS")
    add_definitions(-DZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS)
else()
    message(STATUS "NOT ADDING define switch for ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS")
endif()

message(STATUS "Calling list_ros_message_types.sh with arguments: \"${ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS}\" \"${CMAKE_CURRENT_BINARY_DIR}\" \"${ROS_INSTALL_PREFIX}\" \"${ROS_DISTRO}\"")

execute_process(COMMAND "${CMAKE_CURRENT_SOURCE_DIR}/list_ros_message_types.sh" "${ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS}" "${CMAKE_CURRENT_BINARY_DIR}" "${ROS_INSTALL_PREFIX}" "${ROS_DISTRO}" OUTPUT_VARIABLE ROS_MSG_TYPES OUTPUT_STRIP_TRAILING_WHITESPACE)

# TODO: Get rid of the extra "ZyROSConnector" subdirectory in paths for ther auto-generated source files.
list(APPEND HEADER_FILES
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROS_MessageType_Instantiations_Subscribers.h
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROS_MessageType_Instantiations_Publishers.h
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROS_ServiceType_Client_Instantiations.h)

list(APPEND SOURCE_FILES
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROSConnectorTopicSubscriber.cpp
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROSConnectorTopicPublisher.cpp
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROSConnectorServiceClient.cpp
    ${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector/ZyROSConnector/ZyROSConnectorServiceServer.cpp
    )

find_package(ROS QUIET REQUIRED)
message(STATUS "ROS found: ${ROS_FOUND}")
find_package(Boost COMPONENTS regex thread signals QUIET REQUIRED)
find_package(Log4cxx QUIET REQUIRED)

# Boost
find_package(Boost COMPONENTS system chrono thread REQUIRED QUIET)
include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIRS})

# SOFA include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR}/modules)

# Dependency libraries
include_directories(${CMAKE_SOURCE_DIR}/applications/plugins/SofaROSConnector)
include_directories(${CMAKE_SOURCE_DIR}/applications/plugins/SofaROSConnector/ZyGripping)
include_directories(${CMAKE_SOURCE_DIR}/applications/plugins/SofaROSConnector/ZySOFAControllers)
include_directories(${CMAKE_SOURCE_DIR}/applications/plugins/SofaROSConnector/ZyVelocityApproximation)

# ROS
include_directories(${ROS_INCLUDE_DIR})
include_directories(${LOG4CXX_INCLUDE_DIRS})

include_directories(${CMAKE_BINARY_DIR}/applications/plugins/ZyROSConnector)

add_definitions("-DSOFA_BUILD_ZY_ROS_CONNECTOR")
add_definitions(-DROS_BUILD_SHARED_LIBS)

add_library(${PROJECT_NAME} SHARED ${HEADER_FILES} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} SofaCore SofaHelper SofaDefaultType SofaBaseCollision SofaConstraint SofaSimulationCommon SofaMiscFem tinyxml newmat)
target_link_libraries(${PROJECT_NAME} ZyMultiThreading)
# target_link_libraries(${PROJECT_NAME} ZyGripping)
target_link_libraries(${PROJECT_NAME} ZySOFAControllers)
# target_link_libraries(${PROJECT_NAME} ZyVelocityApproximation)
target_link_libraries(${PROJECT_NAME} ${ROS_LIBRARY} ${ROS_CPP_LIBRARY} ${ROS_CPPCOMMON_LIBRARY} ${ROS_TIME_LIBRARY} ${ROS_CONSOLE_LIBRARY} ${ROS_CPP_SERIALIZATION_LIBRARY})

target_link_libraries(${PROJECT_NAME} ${Boost_REGEX_LIBRARY} ${Boost_THREAD_LIBRARY} ${Boost_SIGNALS_LIBRARY})
target_link_libraries(${PROJECT_NAME} ${LOG4CXX_LIBRARIES})

set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "Plugins")
set_target_properties(${PROJECT_NAME} PROPERTIES DEBUG_POSTFIX "_d")

sofa_create_package(${PROJECT_NAME} ${ZY_ROSCONNECTOR_VERSION} ${PROJECT_NAME} ${PROJECT_NAME})
