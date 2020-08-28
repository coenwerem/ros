#!/usr/bin/env python
# Line above shows that the language is python in case we run it in the command line

import rospy  # import roscpp for C++

import random

from hello_world.msg import SensorData


def calcDistance():
    pub = rospy.Publisher('distance', SensorData, queue_size=10)
    rospy.init_node('sensor', anonymous=True)
    rate = rospy.Rate(0.5)

    details = SensorData()
    details.max_range = 100
    details.min_range = 2
    details.manufacturer_name = 'Clinton'
    details.sensor_type = 'HRCS04'

    while not rospy.is_shutdown():
        details.distance = random.randint(details.min_range, details.max_range)
        success_str = "Details published."
        rospy.loginfo(success_str)
        pub.publish(details)
        rate.sleep()


if __name__ == "__main__":
    try:
        calcDistance()

    except rospy.ROSInterruptException:

        pass
