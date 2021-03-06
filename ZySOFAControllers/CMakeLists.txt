project(ZySOFAControllers)

set(HEADER_FILES
    initZySOFAControllers.h
    ArticulatedHierarchyController.h
    ArticulatedHierarchyBVHController.h
    ArbitraryController.h
    RobotController.h
    ZyColladaToolHandler.h
    ZyColladaToolHandler.inl
)

set(SOURCE_FILES
    initZySOFAControllers.cpp
    ArticulatedHierarchyController.cpp
    ArticulatedHierarchyBVHController.cpp
    ArbitraryController.cpp
    RobotController.cpp
    ZyColladaToolHandler.cpp
)


# SOFA include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR}/modules)

add_definitions("-DSOFA_BUILD_ZYSOFA_CONTROLLERS")

add_library(${PROJECT_NAME} SHARED ${HEADER_FILES} ${SOURCE_FILES})

set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "Plugins")
set_target_properties(${PROJECT_NAME} PROPERTIES DEBUG_POSTFIX "_d")

target_link_libraries(${PROJECT_NAME} SofaCore SofaHelper SofaDefaultType SofaBaseCollision SofaConstraint SofaSimulationCommon SofaUserInteraction)

sofa_create_package(${PROJECT_NAME} "0.0.1" ${PROJECT_NAME} ${PROJECT_NAME})
