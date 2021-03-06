project(SofaROSConnector)

set(CMAKE_VERBOSE_MAKEFILE ON)
LINK_DIRECTORIES(${CMAKE_BINARY_DIR}/lib)

# For FindROS.cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules")

option(ZY_ROS_CONNECTOR_GENERATE_FACTORY_METHODS "Auto-generate factory methods for ROS topic and service clients/servers." OFF)

message(STATUS "Adding SofaROSConnector plugins.")
add_subdirectory(ZySOFAControllers)

add_subdirectory(ZyColladaLoader)
add_subdirectory(ZyMultiThreading)
add_subdirectory(ZyROSConnector)
add_subdirectory(ZyROSConnectionManager)

# Disabled for refactoring to template-based publishers
add_subdirectory(ZyGripping)
add_subdirectory(ZyGrippingHandler)
add_subdirectory(ZyVelocityApproximation)
add_subdirectory(ZyVelocityApproximationHandler)
add_subdirectory(ZySimulationAnalyzerHandler)
add_subdirectory(ZySimulationAnalyzer)
add_subdirectory(ZyROSSubscriptionHelper)
add_subdirectory(ZyROSPublishingHandler)
add_subdirectory(ZyROSKinematics)
# Disabled for refactoring to template-based publishers
# add_subdirectory(ZySimulationLoop)
