#!/usr/bin/env python

import rospy

from hello_world.msg import SensorData

def callback(data):

	rospy.loginfo(rospy.get_caller_id()+" Distance measured = %s", data.distance)

	if data.distance < 30:

		print "LED ON"
	else:

		print "LED OFF"

def receiveDistance():

    rospy.init_node('controller', anonymous=True)
    	
	rospy.Subscriber("distance", SensorData, callback)

    rospy.spin()  #This keeps Python form exiting until the node is stopped

if __name__=="__main__":

	receiveDistance()
