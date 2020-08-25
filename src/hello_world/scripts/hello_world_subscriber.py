#!/usr/bin/env python
import rospy
from hello_world.msg import HelloRos

def callback(data):
    rospy.loginfo(rospy.get_caller_id()+"I heard %s",data.data)


def listener():
    rospy.init_node('hello_world_subscriber',anonymous=True)
    
    rospy.Subscriber("hello_pub", HelloRos, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()
