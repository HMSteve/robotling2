from time import sleep
from machine import Pin, PWM

pwm = PWM(Pin(2))
pwm.freq(50)

def servo(degrees):
    if degrees > 180: degrees=180
    if degrees < 0: degrees=0    
    
    minDuty=2000
    maxDuty=8000

    newDuty=minDuty+(maxDuty-minDuty)*(degrees/180)

    pwm.duty_u16(int(newDuty))
    
while True:
    for degree in range(0,180,1):
        servo(degree)
        sleep(0.001)
        print("increasing -- "+str(degree))
    sleep(3)
    for degree in range(180,0,-1):
        servo(degree)
        sleep(0.001)
        print("decreasing -- "+str(degree))        
    sleep(3)