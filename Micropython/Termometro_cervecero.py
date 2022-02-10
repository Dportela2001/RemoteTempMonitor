from machine import Pin, I2C, PWM
import sh1106
import time
import math
import onewire, ds18x20
from GUI import GUI


def hi_c(pin):
    global state
    global gui
    global temp_actual
    global etapa
    time.sleep(0.4)
    state = not state
    if state:
        gui.pagina_operacion(etapa,temp_actual)
    else:
        gui.pagina_perfil_temp(temp_config)

def hi_u(pin):
    global state
    global paso_etapa
    global etapa
    global alarma
    global t_paso
    time.sleep(0.4)
    if not state:
        if config_index < 4:
            temp_config[config_index] += 1
            gui.update_temp(config_index,temp_config[config_index],True)
        else:
            tiempo_config[config_index-4] += 1
            gui.update_tiempo(config_index-4,tiempo_config[config_index-4],True)
    else:
        if paso_etapa:
            etapa += 1
            paso_etapa = False
            alarma = False
            gui.pagina_operacion(etapa,0)
            t_paso = time.time()

def hi_d(pin):
    global state
    global sonar
    time.sleep(0.4)
    if not state:
        if config_index < 4:
            temp_config[config_index] -= 1
            gui.update_temp(config_index,temp_config[config_index],True)
        else:
            tiempo_config[config_index-4] -= 1
            gui.update_tiempo(config_index-4,tiempo_config[config_index-4],True)
    else:
        sonar = False


def hi_s(pin):
    global config_index
    global gui
    global temp
    global state
    global tiempo
    global init
    time.sleep(0.4)
    if not state:
        if config_index < 4:
            gui.update_temp(config_index,temp_config[config_index],True)
        else:
            gui.update_tiempo(config_index-4,tiempo_config[config_index-4],True)
        config_index = (config_index+1)%9

        if config_index == 4:
            gui.pagina_perfil_tiempo(tiempo_config)
        if config_index == 0:
            gui.pagina_perfil_temp(temp_config)
    else:
        init = True


def medir_temp(sensor,rom):
    global blue
    global red
    global green
    sensor.convert_temp()
    temp = sensor.read_temp(rom)
    blue.duty(temp2RGB(temp,1608,-17.8667))
    red.duty(temp2RGB(temp,0,22.667))
    green.duty(temp2RGB(temp,2221.71,-24.6857))
    return temp

def temp2RGB(temp,x0,m):
    temp = max(min(temp,89.99),20.01)
    return int((temp*m+x0)/2)

state = True #true: normal mode / false: config mode
config_index = 0
config_color = True
init = False
etapa = 0
alarma = False
sonar = False
paso_etapa  = False
t_paso = 0
t_res = 0
t_lev = 0
index_lev = 0
temp_tol = 2

temp_config = [25,25,70,90]
tiempo_config = [0,4,1,2,3,100000]

buzzer = Pin(27, Pin.OUT)
blue = Pin(15, Pin.OUT)
red = Pin(4, Pin.OUT)
green = Pin(2, Pin.OUT)

blue = PWM(blue)
blue.freq(9000)
blue.duty(2**10//2)

red = PWM(red)
red.freq(9000)
red.duty(2**10//2)

green = PWM(green)
green.freq(9000)
green.duty(2**10//2)


buzzer.value(0)
ds_pin = Pin(26)
ds_sensor = ds18x20.DS18X20(onewire.OneWire(ds_pin))
roms = ds_sensor.scan()
rom = roms[0]

i2c = I2C(scl=Pin(22), sda=Pin(21), freq=400000)
display = sh1106.SH1106_I2C(128, 64, i2c)
gui = GUI(display)

gui.pagina_operacion(0,0)


btn_c = Pin(16, Pin.IN)
btn_u = Pin(5, Pin.IN)
btn_d = Pin(17, Pin.IN)
btn_s = Pin(18, Pin.IN)

btn_c.irq(trigger=Pin.IRQ_RISING, handler=hi_c)
btn_u.irq(trigger=Pin.IRQ_RISING, handler=hi_u)
btn_d.irq(trigger=Pin.IRQ_RISING, handler=hi_d)
btn_s.irq(trigger=Pin.IRQ_RISING, handler=hi_s)

temp_actual = ds_sensor.read_temp(rom)

while not init:
    if state:
        temp_actual = medir_temp(ds_sensor,rom)
        gui.update_temp_actual(temp_actual)
        time.sleep(1)
    else:
        if config_index < 4:
            gui.update_temp(config_index,temp_config[config_index],config_color)
        else:
            gui.update_tiempo(config_index-4,tiempo_config[config_index-4],config_color)
        config_color = not config_color
        time.sleep(0.5)

while init:
    if state:
        if etapa == 0:
            etapa += 1
            gui.pagina_operacion(1,medir_temp(ds_sensor,rom))
        elif etapa == 1:
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            if temp_actual > temp_config[0]:
                paso_etapa = True
                alarma = True
        elif etapa == 2:
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            t_res = tiempo_config[0]-(time.time()-t_paso)//60
            gui.update_tiempo_res(t_res)
            paso_etapa = False
            if sonar:
                alarma = abs(temp_config[1]-temp_actual)>temp_tol
            else:
                alarma = False
            if abs(temp_config[1]-temp_actual)<temp_tol:
                sonar = True
            if t_res < 0:
                etapa +=1
                alarma = True
                gui.pagina_operacion(etapa,0)
        elif etapa == 3:
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            paso_etapa = True
            if sonar:
                alarma = abs(temp_config[2]-temp_actual)>temp_tol
            else:
                alarma = False
            if abs(temp_config[2]-temp_actual)<temp_tol:
                sonar = True
        elif etapa == 4:
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            paso_etapa = True
        elif etapa == 5:
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            t_res = tiempo_config[1]-(time.time()-t_paso)//60
            gui.update_tiempo_res(t_res)
            t_lev = (time.time()-t_paso)//60
            paso_etapa = False

            if t_lev > tiempo_config[2+index_lev]:
                alarma = True
                index_lev += 1
            if not sonar:
                alarma = False
                sonar = True
            if t_res < 0:
                etapa +=1
                alarma = True
                gui.pagina_operacion(etapa,0)
        elif etapa == 6:
            alarma = sonar
            temp_actual = medir_temp(ds_sensor,rom)
            gui.update_temp_actual(temp_actual)
            if temp_actual < 20:
                etapa += 1
                gui.pagina_operacion(0,0)
                alarma = True
        else:
            alarma = sonar



        if alarma:
            buzzer.value(1)
            time.sleep(0.5)
            buzzer.value(0)
            time.sleep(0.5)


    else:
        if config_index < 4:
            gui.update_temp(config_index,temp_config[config_index],config_color)
        else:
            gui.update_tiempo(config_index-4,tiempo_config[config_index-4],config_color)
        config_color = not config_color
        time.sleep(0.5)


