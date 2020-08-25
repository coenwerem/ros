#!/usr/bin/env python
import rospy #importing the rospy package because we will be developing a ROS python node
from hello_world.msg import HelloRos

def talker():
    pub = rospy.Publisher('hello_pub', HelloRos, queue_size = 10)

    hello=HelloRos()
    hello.Ros = "ROS"

    rospy.init_node('hello_world_publisher', anonymous=True) #Initialize the node
    r = rospy.Rate(10) # The buffer rate of 10 Hz

    while not rospy.is_shutdown():
        str = "i am learning %s" %(hello.Ros)
        pub.publish(str)
        r.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass
