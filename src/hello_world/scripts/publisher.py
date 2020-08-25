#!/usr/bin/env python   
#Line above shows that the language is python in case we run it in the command line

import rospy #import roscpp for C++

from std_msgs.msg import String

def talker():
	pub = rospy.Publisher('chatter', String, queue_size = 10)
	rospy.init_node('talker', anonymous = False)
	rate = rospy.Rate(2)

	while not rospy.is_shutdown():
		hello_str = "I am learning ROS at time t = %s" %rospy.get_time()	
		rospy.loginfo(hello_str)
		pub.publish(hello_str)
		rate.sleep()

if __name__ == "__main__":
	try:
		talker()

	except rospy.ROSInterruptException:
		pass
	


		
