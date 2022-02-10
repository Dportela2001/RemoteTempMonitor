from machine import Pin, I2C
import sh1106
import time
import math

i2c = I2C(scl=Pin(22), sda=Pin(21), freq=400000)
display = sh1106.SH1106_I2C(128, 64, i2c)
display.sleep(False)
display.fill(0)
display.flip(True)
display.text("Felipe caiga",0,0,1)
display.show()
time.sleep(2)
while True:
    display.fill(0)
    display.text("Felipe caiga",0,0,1)
    display.show()
    time.sleep(2)
    for i in range(65):
        display.fill_rect(0,0,math.floor(i*128/64),i,1)
        display.show()
    for i in range(65):
        display.fill_rect(128-math.floor(i*128/64),64-i,math.floor(i*128/64),i,0)
        display.show()

