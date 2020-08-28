#!/usr/bin/env python

import rospy  # import roscpp for C++

import RPi.GPIO as GPIO
import time

from hello_world.msg import ultRangerData

GPIO.setmode(GPIO.BCM)

sensorDetails = ultRangerData()

sensorDetails.TRIG = 18
sensorDetails.ECHO = 23

GPIO.setup(sensorDetails.TRIG, GPIO.OUT)
GPIO.setup(sensorDetails.ECHO, GPIO.IN)

def calcDistance():
    pub = rospy.Publisher('distance', ultRangerData, queue_size=10)
    rospy.init_node('sensor_node', anonymous=True)
    rate = rospy.Rate(0.5)

    GPIO.output(sensorDetails.TRIG, True)
    time.sleep(0.00001)
    GPIO.output(sensorDetails.TRIG, False)

    pulse_start = time.time()

    while GPIO.input(sensorDetails.ECHO) == 0:
        pulse_start = time.time()

    while GPIO.input(sensorDetails.ECHO) == 1:
        pulse_end = time.time()

    pulse_duration = pulse_end - pulse_start

    while not rospy.is_shutdown():

        dist = pulse_duration * 17150
        sensorDetails.distance=dist
	time.sleep(2)

        success_str = "Distance recorded and published: %f" %dist
        rospy.loginfo(success_str)
        pub.publish(sensorDetails)
        rate.sleep()


if __name__ == "__main__":
    try:
        while True:
            calcDistance()

    except rospy.ROSInterruptException:
        GPIO.cleanup()
        pass
