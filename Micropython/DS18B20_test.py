import machine, onewire, ds18x20, time
from machine import Pin, I2C
import sh1106
from GUI import GUI


ds_pin = machine.Pin(26)
ds_sensor = ds18x20.DS18X20(onewire.OneWire(ds_pin))
i2c = I2C(scl=Pin(22), sda=Pin(21), freq=400000)
display = sh1106.SH1106_I2C(128, 64, i2c)
gui = GUI(display)


roms = ds_sensor.scan()
gui.pagina_operacion(0)

while True:
  ds_sensor.convert_temp()
  time.sleep_ms(500)
  gui.update_temp_actual(ds_sensor.read_temp(roms[0]))
  time.sleep(1)
