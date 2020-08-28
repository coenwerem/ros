#!/usr/bin/env python

import rospy  # import roscpp for C++

import RPi.GPIO as GPIO
import time

from hello_world.msg import ultRangerData
from hello_world.msg import motorDriver

GPIO.setmode(GPIO.BOARD)

driverDetails = motorDriver()

driverDetails.ENABLE_A = 8
driverDetails.ENABLE_B = 4
driverDetails.dir1 = 5
driverDetails.dir2 = 6
driverDetails.dir3 = 24
driverDetails.dir4 = 25

GPIO.output(driverDetails.ENABLE_B, True)

def forward():
    GPIO.output(driverDetails.dir3, True)
    GPIO.output(driverDetails.dir4, False)


def backward():
    GPIO.output(driverDetails.dir3, False)
    GPIO.output(driverDetails.dir4, True)


def stop():
    GPIO.output(driverDetails.dir3, False)
    GPIO.output(driverDetails.dir4, False)

def callback(data):

    if data.distance <= 20:
        rospy.loginfo(rospy.get_caller_id() + " Distance measured = %s", data.distance, "cm")
        backward()
        #time.sleep(3)
        #stop()

    else:
        rospy.loginfo(rospy.get_caller_id() + " Distance measured = %s", data.distance, "cm")
        forward()
        #time.sleep(3)
        #stop()


def receiveDistance():

    rospy.init_node('driver', anonymous=True)
    rospy.Subscriber("distance", ultRangerData, callback)
    rospy.spin()  # This keeps Python form exiting until the node is stopped


if __name__ == "__main__":

    receiveDistance()
