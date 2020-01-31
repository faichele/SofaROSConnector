#!/bin/bash

# --generate_factory_methods="false"
python ./generate_message_and_service_files.py --base_directory="/alpenland/data/lenovo/volume1/build/sofa-zyklio/Debug/applications/plugins/ZyROSConnector/ZyROSConnector" --message_types="actionlib/TestAction actionlib/TestActionFeedback actionlib/TestActionGoal actionlib/TestActionResult actionlib/TestFeedback actionlib/TestGoal actionlib/TestRequestAction actionlib/TestRequestActionFeedback actionlib/TestRequestActionGoal actionlib/TestRequestActionResult actionlib/TestRequestFeedback actionlib/TestRequestGoal actionlib/TestRequestResult actionlib/TestResult actionlib/TwoIntsAction actionlib/TwoIntsActionFeedback actionlib/TwoIntsActionGoal actionlib/TwoIntsActionResult actionlib/TwoIntsFeedback actionlib/TwoIntsGoal actionlib/TwoIntsResult actionlib_msgs/GoalID actionlib_msgs/GoalStatus actionlib_msgs/GoalStatusArray base_local_planner/Position2DInt bond/Constants bond/Status carecules_bringup/CameraImgInfoFused carecules_bringup/EulerRPY carecules_slam/EulerRPY cartographer_ros_msgs/LandmarkEntry cartographer_ros_msgs/LandmarkList cartographer_ros_msgs/SensorTopics cartographer_ros_msgs/StatusCode cartographer_ros_msgs/StatusResponse cartographer_ros_msgs/SubmapEntry cartographer_ros_msgs/SubmapList cartographer_ros_msgs/SubmapTexture cartographer_ros_msgs/TrajectoryOptions control_msgs/FollowJointTrajectoryAction control_msgs/FollowJointTrajectoryActionFeedback control_msgs/FollowJointTrajectoryActionGoal control_msgs/FollowJointTrajectoryActionResult control_msgs/FollowJointTrajectoryFeedback control_msgs/FollowJointTrajectoryGoal control_msgs/FollowJointTrajectoryResult control_msgs/GripperCommand control_msgs/GripperCommandAction control_msgs/GripperCommandActionFeedback control_msgs/GripperCommandActionGoal control_msgs/GripperCommandActionResult control_msgs/GripperCommandFeedback control_msgs/GripperCommandGoal control_msgs/GripperCommandResult control_msgs/JointControllerState control_msgs/JointJog control_msgs/JointTolerance control_msgs/JointTrajectoryAction control_msgs/JointTrajectoryActionFeedback control_msgs/JointTrajectoryActionGoal control_msgs/JointTrajectoryActionResult control_msgs/JointTrajectoryControllerState control_msgs/JointTrajectoryFeedback control_msgs/JointTrajectoryGoal control_msgs/JointTrajectoryResult control_msgs/PidState control_msgs/PointHeadAction control_msgs/PointHeadActionFeedback control_msgs/PointHeadActionGoal control_msgs/PointHeadActionResult control_msgs/PointHeadFeedback control_msgs/PointHeadGoal control_msgs/PointHeadResult control_msgs/SingleJointPositionAction control_msgs/SingleJointPositionActionFeedback control_msgs/SingleJointPositionActionGoal control_msgs/SingleJointPositionActionResult control_msgs/SingleJointPositionFeedback control_msgs/SingleJointPositionGoal control_msgs/SingleJointPositionResult controller_manager_msgs/ControllerState controller_manager_msgs/ControllerStatistics controller_manager_msgs/ControllersStatistics controller_manager_msgs/HardwareInterfaceResources costmap_2d/VoxelGrid costmap_converter/ObstacleArrayMsg costmap_converter/ObstacleMsg diagnostic_msgs/DiagnosticArray diagnostic_msgs/DiagnosticStatus diagnostic_msgs/KeyValue dynamic_reconfigure/BoolParameter dynamic_reconfigure/Config dynamic_reconfigure/ConfigDescription dynamic_reconfigure/DoubleParameter dynamic_reconfigure/Group dynamic_reconfigure/GroupState dynamic_reconfigure/IntParameter dynamic_reconfigure/ParamDescription dynamic_reconfigure/SensorLevels dynamic_reconfigure/StrParameter face_detector/FaceDetectorAction face_detector/FaceDetectorActionFeedback face_detector/FaceDetectorActionGoal face_detector/FaceDetectorActionResult face_detector/FaceDetectorFeedback face_detector/FaceDetectorGoal face_detector/FaceDetectorResult gazebo_msgs/ContactState gazebo_msgs/ContactsState gazebo_msgs/LinkState gazebo_msgs/LinkStates gazebo_msgs/ModelState gazebo_msgs/ModelStates gazebo_msgs/ODEJointProperties gazebo_msgs/ODEPhysics gazebo_msgs/OpenSimPhysics gazebo_msgs/WorldState geometry_msgs/Accel geometry_msgs/AccelStamped geometry_msgs/AccelWithCovariance geometry_msgs/AccelWithCovarianceStamped geometry_msgs/Inertia geometry_msgs/InertiaStamped geometry_msgs/Point geometry_msgs/Point32 geometry_msgs/PointStamped geometry_msgs/Polygon geometry_msgs/PolygonStamped geometry_msgs/Pose geometry_msgs/Pose2D geometry_msgs/PoseArray geometry_msgs/PoseStamped geometry_msgs/PoseWithCovariance geometry_msgs/PoseWithCovarianceStamped geometry_msgs/Quaternion geometry_msgs/QuaternionStamped geometry_msgs/Transform geometry_msgs/TransformStamped geometry_msgs/Twist geometry_msgs/TwistStamped geometry_msgs/TwistWithCovariance geometry_msgs/TwistWithCovarianceStamped geometry_msgs/Vector3 geometry_msgs/Vector3Stamped geometry_msgs/Wrench geometry_msgs/WrenchStamped map_msgs/OccupancyGridUpdate map_msgs/PointCloud2Update map_msgs/ProjectedMap map_msgs/ProjectedMapInfo mbf_msgs/ExePathAction mbf_msgs/ExePathActionFeedback mbf_msgs/ExePathActionGoal mbf_msgs/ExePathActionResult mbf_msgs/ExePathFeedback mbf_msgs/ExePathGoal mbf_msgs/ExePathResult mbf_msgs/GetPathAction mbf_msgs/GetPathActionFeedback mbf_msgs/GetPathActionGoal mbf_msgs/GetPathActionResult mbf_msgs/GetPathFeedback mbf_msgs/GetPathGoal mbf_msgs/GetPathResult mbf_msgs/MoveBaseAction mbf_msgs/MoveBaseActionFeedback mbf_msgs/MoveBaseActionGoal mbf_msgs/MoveBaseActionResult mbf_msgs/MoveBaseFeedback mbf_msgs/MoveBaseGoal mbf_msgs/MoveBaseResult mbf_msgs/RecoveryAction mbf_msgs/RecoveryActionFeedback mbf_msgs/RecoveryActionGoal mbf_msgs/RecoveryActionResult mbf_msgs/RecoveryFeedback mbf_msgs/RecoveryGoal mbf_msgs/RecoveryResult move_base_msgs/MoveBaseAction move_base_msgs/MoveBaseActionFeedback move_base_msgs/MoveBaseActionGoal move_base_msgs/MoveBaseActionResult move_base_msgs/MoveBaseFeedback move_base_msgs/MoveBaseGoal move_base_msgs/MoveBaseResult nav_msgs/GetMapAction nav_msgs/GetMapActionFeedback nav_msgs/GetMapActionGoal nav_msgs/GetMapActionResult nav_msgs/GetMapFeedback nav_msgs/GetMapGoal nav_msgs/GetMapResult nav_msgs/GridCells nav_msgs/MapMetaData nav_msgs/OccupancyGrid nav_msgs/Odometry nav_msgs/Path obstacle_detector/CircleObstacle obstacle_detector/Obstacles obstacle_detector/SegmentObstacle osrf_gear/ConveyorBeltState osrf_gear/DetectedProduct osrf_gear/DetectedShipment osrf_gear/LogicalCameraImage osrf_gear/Model osrf_gear/Order osrf_gear/PopulationState osrf_gear/Product osrf_gear/Proximity osrf_gear/Shipment osrf_gear/StorageUnit osrf_gear/VacuumGripperState pcl_msgs/ModelCoefficients pcl_msgs/PointIndices pcl_msgs/PolygonMesh pcl_msgs/Vertices people_msgs/People people_msgs/Person people_msgs/PersonStamped people_msgs/PositionMeasurement people_msgs/PositionMeasurementArray roscpp/Logger rosgraph_msgs/Clock rosgraph_msgs/Log rosgraph_msgs/TopicStatistics rtabmap_ros/GPS rtabmap_ros/Goal rtabmap_ros/Info rtabmap_ros/KeyPoint rtabmap_ros/Link rtabmap_ros/MapData rtabmap_ros/MapGraph rtabmap_ros/NodeData rtabmap_ros/OdomInfo rtabmap_ros/Path rtabmap_ros/Point2f rtabmap_ros/Point3f rtabmap_ros/RGBDImage rtabmap_ros/UserData sbpl_lattice_planner/SBPLLatticePlannerStats sensor_msgs/BatteryState sensor_msgs/CameraInfo sensor_msgs/ChannelFloat32 sensor_msgs/CompressedImage sensor_msgs/FluidPressure sensor_msgs/Illuminance sensor_msgs/Image sensor_msgs/Imu sensor_msgs/JointState sensor_msgs/Joy sensor_msgs/JoyFeedback sensor_msgs/JoyFeedbackArray sensor_msgs/LaserEcho sensor_msgs/LaserScan sensor_msgs/MagneticField sensor_msgs/MultiDOFJointState sensor_msgs/MultiEchoLaserScan sensor_msgs/NavSatFix sensor_msgs/NavSatStatus sensor_msgs/PointCloud sensor_msgs/PointCloud2 sensor_msgs/PointField sensor_msgs/Range sensor_msgs/RegionOfInterest sensor_msgs/RelativeHumidity sensor_msgs/Temperature sensor_msgs/TimeReference shape_msgs/Mesh shape_msgs/MeshTriangle shape_msgs/Plane shape_msgs/SolidPrimitive situation_assessment_msgs/AreaList situation_assessment_msgs/Edge situation_assessment_msgs/Fact situation_assessment_msgs/FactList situation_assessment_msgs/Graph situation_assessment_msgs/Group situation_assessment_msgs/GroupList situation_assessment_msgs/HumanIntention situation_assessment_msgs/HumanIntentionList situation_assessment_msgs/NamedPose situation_assessment_msgs/NamedPoseList situation_assessment_msgs/Node situation_assessment_msgs/Property smach_msgs/SmachContainerInitialStatusCmd smach_msgs/SmachContainerStatus smach_msgs/SmachContainerStructure sofa_softrobots_msgs/BodyTransforms spencer_control_msgs/CollisionStatus spencer_control_msgs/ComponentStatus spencer_control_msgs/LocalizationStatus spencer_control_msgs/SafetyRectangle spencer_control_msgs/SetHeadJointPosition spencer_control_msgs/SetHeadJointVelocity spencer_control_msgs/SystemStatus spencer_human_attribute_msgs/CategoricalAttribute spencer_human_attribute_msgs/HumanAttributes spencer_human_attribute_msgs/ScalarAttribute spencer_mapping_msgs/Annotation spencer_mapping_msgs/Annotations spencer_mapping_msgs/TopologicalMap spencer_mapping_msgs/TopologicalMapEdge spencer_mapping_msgs/TopologicalMapNode spencer_nav_msgs/NavParams spencer_nav_msgs/NavigationPlanRequestGeometric spencer_nav_msgs/NavigationPlanRequestTopological spencer_social_relation_msgs/SocialActivities spencer_social_relation_msgs/SocialActivity spencer_social_relation_msgs/SocialRelation spencer_social_relation_msgs/SocialRelations spencer_spokesperson_msgs/Spokesperson spencer_task_planner_msgs/GuidanceStatus spencer_tracking_msgs/CompositeDetectedPerson spencer_tracking_msgs/CompositeDetectedPersons spencer_tracking_msgs/DetectedPerson spencer_tracking_msgs/DetectedPersons spencer_tracking_msgs/ImmDebugInfo spencer_tracking_msgs/ImmDebugInfos spencer_tracking_msgs/PersonTrajectory spencer_tracking_msgs/PersonTrajectoryEntry spencer_tracking_msgs/TrackedGroup spencer_tracking_msgs/TrackedGroups spencer_tracking_msgs/TrackedPerson spencer_tracking_msgs/TrackedPerson2d spencer_tracking_msgs/TrackedPersons spencer_tracking_msgs/TrackedPersons2d spencer_tracking_msgs/TrackingTimingMetrics spencer_vision_msgs/PersonImage spencer_vision_msgs/PersonImages spencer_vision_msgs/PersonROI spencer_vision_msgs/PersonROIs std_msgs/Bool std_msgs/Byte std_msgs/ByteMultiArray std_msgs/Char std_msgs/ColorRGBA std_msgs/Duration std_msgs/Empty std_msgs/Float32 std_msgs/Float32MultiArray std_msgs/Float64 std_msgs/Float64MultiArray std_msgs/Header std_msgs/Int16 std_msgs/Int16MultiArray std_msgs/Int32 std_msgs/Int32MultiArray std_msgs/Int64 std_msgs/Int64MultiArray std_msgs/Int8 std_msgs/Int8MultiArray std_msgs/MultiArrayDimension std_msgs/MultiArrayLayout std_msgs/String std_msgs/Time std_msgs/UInt16 std_msgs/UInt16MultiArray std_msgs/UInt32 std_msgs/UInt32MultiArray std_msgs/UInt64 std_msgs/UInt64MultiArray std_msgs/UInt8 std_msgs/UInt8MultiArray stereo_msgs/DisparityImage supervision_msgs/ApproachAction supervision_msgs/ApproachActionFeedback supervision_msgs/ApproachActionGoal supervision_msgs/ApproachActionResult supervision_msgs/ApproachFeedback supervision_msgs/ApproachGoal supervision_msgs/ApproachResult supervision_msgs/GuideFollowers supervision_msgs/GuideGroupAction supervision_msgs/GuideGroupActionFeedback supervision_msgs/GuideGroupActionGoal supervision_msgs/GuideGroupActionResult supervision_msgs/GuideGroupFeedback supervision_msgs/GuideGroupGoal supervision_msgs/GuideGroupResult supervision_msgs/MoveToAction supervision_msgs/MoveToActionFeedback supervision_msgs/MoveToActionGoal supervision_msgs/MoveToActionResult supervision_msgs/MoveToFeedback supervision_msgs/MoveToGoal supervision_msgs/MoveToPoseAction supervision_msgs/MoveToPoseActionFeedback supervision_msgs/MoveToPoseActionGoal supervision_msgs/MoveToPoseActionResult supervision_msgs/MoveToPoseFeedback supervision_msgs/MoveToPoseGoal supervision_msgs/MoveToPoseResult supervision_msgs/MoveToResult supervision_msgs/PathInfo supervision_msgs/SupervisionStatus supervision_msgs/SupervisionStopped tf/tfMessage tf2_msgs/LookupTransformAction tf2_msgs/LookupTransformActionFeedback tf2_msgs/LookupTransformActionGoal tf2_msgs/LookupTransformActionResult tf2_msgs/LookupTransformFeedback tf2_msgs/LookupTransformGoal tf2_msgs/LookupTransformResult tf2_msgs/TF2Error tf2_msgs/TFMessage trajectory_msgs/JointTrajectory trajectory_msgs/JointTrajectoryPoint trajectory_msgs/MultiDOFJointTrajectory trajectory_msgs/MultiDOFJointTrajectoryPoint turtlebot3_example/Turtlebot3Action turtlebot3_example/Turtlebot3ActionFeedback turtlebot3_example/Turtlebot3ActionGoal turtlebot3_example/Turtlebot3ActionResult turtlebot3_example/Turtlebot3Feedback turtlebot3_example/Turtlebot3Goal turtlebot3_example/Turtlebot3Result turtlebot3_msgs/SensorState turtlebot3_msgs/Sound turtlebot3_msgs/VersionInfo turtlebot_actions/FindFiducialAction turtlebot_actions/FindFiducialActionFeedback turtlebot_actions/FindFiducialActionGoal turtlebot_actions/FindFiducialActionResult turtlebot_actions/FindFiducialFeedback turtlebot_actions/FindFiducialGoal turtlebot_actions/FindFiducialResult turtlebot_actions/TurtlebotMoveAction turtlebot_actions/TurtlebotMoveActionFeedback turtlebot_actions/TurtlebotMoveActionGoal turtlebot_actions/TurtlebotMoveActionResult turtlebot_actions/TurtlebotMoveFeedback turtlebot_actions/TurtlebotMoveGoal turtlebot_actions/TurtlebotMoveResult turtlebot_calibration/ScanAngle turtlebot_msgs/PanoramaImg visualization_msgs/ImageMarker visualization_msgs/InteractiveMarker visualization_msgs/InteractiveMarkerControl visualization_msgs/InteractiveMarkerFeedback visualization_msgs/InteractiveMarkerInit visualization_msgs/InteractiveMarkerPose visualization_msgs/InteractiveMarkerUpdate visualization_msgs/Marker visualization_msgs/MarkerArray visualization_msgs/MenuEntry" --service_types="carecules_mapping_control/cc_rosbag_recorder cartographer_ros_msgs/FinishTrajectory cartographer_ros_msgs/StartTrajectory cartographer_ros_msgs/SubmapQuery cartographer_ros_msgs/WriteState control_msgs/QueryCalibrationState control_msgs/QueryTrajectoryState control_toolbox/SetPidGains controller_manager_msgs/ListControllerTypes controller_manager_msgs/ListControllers controller_manager_msgs/LoadController controller_manager_msgs/ReloadControllerLibraries controller_manager_msgs/SwitchController controller_manager_msgs/UnloadController diagnostic_msgs/AddDiagnostics diagnostic_msgs/SelfTest dynamic_reconfigure/Reconfigure gazebo_msgs/ApplyBodyWrench gazebo_msgs/ApplyJointEffort gazebo_msgs/BodyRequest gazebo_msgs/DeleteLight gazebo_msgs/DeleteModel gazebo_msgs/GetJointProperties gazebo_msgs/GetLightProperties gazebo_msgs/GetLinkProperties gazebo_msgs/GetLinkState gazebo_msgs/GetModelProperties gazebo_msgs/GetModelState gazebo_msgs/GetPhysicsProperties gazebo_msgs/GetWorldProperties gazebo_msgs/JointRequest gazebo_msgs/SetJointProperties gazebo_msgs/SetJointTrajectory gazebo_msgs/SetLightProperties gazebo_msgs/SetLinkProperties gazebo_msgs/SetLinkState gazebo_msgs/SetModelConfiguration gazebo_msgs/SetModelState gazebo_msgs/SetPhysicsProperties gazebo_msgs/SpawnModel hector_gazebo_plugins/SetBias map_msgs/GetMapROI map_msgs/GetPointMap map_msgs/GetPointMapROI map_msgs/ProjectedMapsInfo map_msgs/SaveMap map_msgs/SetMapProjections mbf_msgs/CheckPath mbf_msgs/CheckPoint mbf_msgs/CheckPose nav_msgs/GetMap nav_msgs/GetPlan nav_msgs/SetMap navfn/MakeNavPlan navfn/SetCostmap nodelet/NodeletList nodelet/NodeletLoad nodelet/NodeletUnload osrf_gear/AGVControl osrf_gear/ConveyorBeltControl osrf_gear/DetectShipment osrf_gear/DroneControl osrf_gear/GetMaterialLocations osrf_gear/PopulationControl osrf_gear/SubmitShipment osrf_gear/SubmitTray osrf_gear/VacuumGripperControl polled_camera/GetPolledImage roscpp/Empty roscpp/GetLoggers roscpp/SetLoggerLevel rtabmap_ros/GetMap rtabmap_ros/GetPlan rtabmap_ros/ListLabels rtabmap_ros/PublishMap rtabmap_ros/ResetPose rtabmap_ros/SetGoal rtabmap_ros/SetLabel sensor_msgs/SetCameraInfo situation_assessment_msgs/AddArea situation_assessment_msgs/DatabaseRequest situation_assessment_msgs/EmptyRequest situation_assessment_msgs/GetLocations situation_assessment_msgs/GetMap situation_assessment_msgs/NameRequest situation_assessment_msgs/QueryDatabase situation_assessment_msgs/SwitchOrientation sofa_softrobots_msgs/SoftRobotCableActuators sofa_softrobots_msgs/SoftRobotSurfacePressureActuators spencer_control_msgs/GetMaxVelocity spencer_control_msgs/ReleaseEmergencyStop spencer_control_msgs/SetEmergencyStop spencer_control_msgs/SetMaxVelocity spencer_mapping_msgs/Label spencer_mapping_msgs/Labels spencer_nav_msgs/SetDrivingDirection spencer_nav_msgs/StopDriving spencer_task_planner_msgs/GoHome spencer_task_planner_msgs/StartGuidance spencer_tracking_msgs/GetPersonTrajectories std_srvs/Empty std_srvs/SetBool std_srvs/Trigger supervision_msgs/CalculatePath supervision_msgs/EmptyRequest supervision_msgs/GetConnectedNodes supervision_msgs/SetRobotSimStatus tf/FrameGraph tf2_msgs/FrameGraph topic_tools/DemuxAdd topic_tools/DemuxDelete topic_tools/DemuxList topic_tools/DemuxSelect topic_tools/MuxAdd topic_tools/MuxDelete topic_tools/MuxList topic_tools/MuxSelect turtlebot_msgs/SetFollowState turtlebot_msgs/TakePanorama zyrosconnector_test/ArrayOfFloats"
