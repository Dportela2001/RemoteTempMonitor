from machine import Pin
import time

p = Pin(2, Pin.OUT)

def toogle(maxi):
    lap = 0

    while lap<maxi:
        p.value(1)
        time.sleep(1)
        p.value(0)
        time.sleep(1)
        lap = lap+1

toogle(10)

