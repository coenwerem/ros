# ros
Creating publisher and subscriber nodes to pass sensor data for a mobile robot.
Sensors: HC-SR04 ultrasonic ranger.
SBC: Raspberry Pi.
Nodes can be run by using <roslaunch hello_world controller.launch> from the catkin_ws directory. <rosrun hello_world ultrasonic_sensor.py> will publish the ultrasonic ranger data to the 'distance' topic.
