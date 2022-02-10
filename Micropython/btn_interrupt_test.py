from machine import Pin, I2C
import sh1106
import time

count = 0

def handle_interrupt(pin):
    global count
    count = count + 1
    time.sleep_ms(100)
    global display
    display.fill(0)
    display.text('count: '+str(count), 0, 0, 1)
    display.flip(True)
    display.show()



led = Pin(15, Pin.OUT)
btn = Pin(5, Pin.IN)

btn.irq(trigger=Pin.IRQ_RISING, handler=handle_interrupt)

i2c = I2C(scl=Pin(22), sda=Pin(21), freq=400000)
display = sh1106.SH1106_I2C(128, 64, i2c)
display.sleep(False)
display.fill(0)
display.text('count: 0', 0, 0, 1)
display.flip(True)
display.show()


while True:
    i=0













