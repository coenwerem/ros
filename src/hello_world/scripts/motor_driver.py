#!/usr/bin/env python

import rospy  # import roscpp for C++

import RPi.GPIO as GPIO
import time

from hello_world.msg import ultRangerData
from hello_world.msg import motorDriver

GPIO.setmode(GPIO.BCM)

driverDetails = motorDriver()

driverDetails.ENABLE_A = 8
driverDetails.ENABLE_B = 4
driverDetails.dir1 = 13
driverDetails.dir2 = 19
driverDetails.dir3 = 20
driverDetails.dir4 = 16

#GPIO.setup(driverDetails.ENABLE_B, GPIO.OUT)
GPIO.setup(driverDetails.dir1, GPIO.OUT)
GPIO.setup(driverDetails.dir2, GPIO.OUT)
GPIO.setup(driverDetails.dir3, GPIO.OUT)
GPIO.setup(driverDetails.dir4, GPIO.OUT)

#GPIO.output(driverDetails.ENABLE_B, True)

def forward():
    GPIO.output(driverDetails.dir1, True)
    GPIO.output(driverDetails.dir2, False)
    GPIO.output(driverDetails.dir3, True)
    GPIO.output(driverDetails.dir4, False)


def backward():
    GPIO.output(driverDetails.dir1, False)
    GPIO.output(driverDetails.dir2, True)
    GPIO.output(driverDetails.dir3, False)
    GPIO.output(driverDetails.dir4, True)


def stop():
    GPIO.output(driverDetails.dir1, False)
    GPIO.output(driverDetails.dir2, False)
    GPIO.output(driverDetails.dir3, False)
    GPIO.output(driverDetails.dir4, False)

def callback(data):

    if data.distance <= 20:
        rospy.loginfo(data.distance)
        backward()
        #time.sleep(3)
        #stop()

    else:
        rospy.loginfo(data.distance)
        forward()
        #time.sleep(3)
        #stop()


def receiveDistance():

    rospy.init_node('driver', anonymous=True)
    rospy.Subscriber("distance", ultRangerData, callback)
    rospy.spin()  # This keeps Python form exiting until the node is stopped


if __name__ == "__main__":

    try:

        receiveDistance()

    except rospy.ROSInterruptException:

        stop()
