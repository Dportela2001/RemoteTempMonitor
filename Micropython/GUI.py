import sh1106
import math

class GUI():

    p = [[0,0],
              [18,30],
              [18,22],
              [48,22],
              [48,35],
              [63,35],
              [78,47],
              [108,47],
              [123,10]]

    temp_box = [[p[1][0]-8,63-p[1][1]-8],
                [math.floor((p[2][0]+p[3][0])/2-8),63-p[2][1]-8],
                [math.floor((p[4][0]+p[5][0])/2-8),63-p[4][1]-8],
                [math.floor((p[6][0]+p[7][0])/2-8),63-p[6][1]+2]]


    tiempo_box = [[math.floor((p[2][0]+p[3][0])/2-8),63-p[2][1]+15-8],
                  [math.floor((p[6][0]+p[7][0])/2-8),63-p[6][1]+15-8],
                  [p[6][0]-16,63-p[6][1]+25-4],
                  [p[6][0]-16,63-p[6][1]+35-4],
                  [p[6][0]-16,63-p[6][1]+45-4]]

    etapa = ["Configurando","Calentando agua","Maceracion","Lavado","Esperar hervido","Hervido","Enfiramiento"]





    display = None

    def __init__(self,display):
        self.display = display
        self.display.sleep(False)
        self.display.flip(True)
        self.display.show()


    def pagina_perfil_temp(self,temp):
        self.display.fill(0)
        self.display.text("PERFIL TEMP:",16,0,1)
        self.display.text('(',16,9,1)
        self.display.rect(16+8+5,9+1,3,3,1)
        self.display.text('C)',16+8*2,9,1)
        p = self.p
        for i in range(1,len(p)):
            self.display.line(p[i-1][0],63-p[i-1][1],p[i][0],63-p[i][1],1)
        for i in range(len(temp)):
            self.display.text(str(temp[i]),self.temp_box[i][0],self.temp_box[i][1],1)
        self.display.show()

    def pagina_perfil_tiempo(self,tiempo):
        self.display.fill(0)
        self.display.text("PERFIL TIEMPO:",8,0,1)
        self.display.text("(min)",8,9,1)
        p = self.p
        for i in range(1,len(p)):
            self.display.line(p[i-1][0],63-p[i-1][1],p[i][0],63-p[i][1],1)
        self.display.line(p[2][0],63-p[2][1]+15,p[3][0],63-p[3][1]+15,1)
        self.display.line(p[2][0],63-p[2][1]+17,p[2][0],63-p[2][1]+13,1)
        self.display.line(p[3][0],63-p[3][1]+17,p[3][0],63-p[3][1]+13,1)
        self.display.line(p[6][0],63-p[6][1]+15,p[7][0],63-p[7][1]+15,1)
        self.display.line(p[6][0],63-p[6][1]+17,p[6][0],63-p[6][1]+13,1)
        self.display.line(p[7][0],63-p[7][1]+17,p[7][0],63-p[7][1]+13,1)
        self.display.hline(p[6][0],63-p[6][1]+15+10,8,1)
        self.display.vline(p[6][0],63-p[6][1]+13+10,5,1)
        self.display.vline(p[6][0]+7,63-p[7][1]+13+10,5,1)
        self.display.hline(p[6][0],63-p[6][1]+15+20,19,1)
        self.display.vline(p[6][0],63-p[6][1]+13+20,5,1)
        self.display.vline(p[6][0]+19,63-p[7][1]+13+20,5,1)
        self.display.hline(p[6][0],63-p[6][1]+15+30,25,1)
        self.display.vline(p[6][0],63-p[6][1]+13+30,5,1)
        self.display.vline(p[6][0]+25,63-p[7][1]+13+30,5,1)
        for i in range(len(tiempo)):
            self.display.text(str(tiempo[i]),self.tiempo_box[i][0],self.tiempo_box[i][1],1)
        self.display.show()


    def pagina_operacion(self,etapa,temp):
        self.display.fill(0)
        self.update_etapa(etapa)
        self.display.text("Tiempo Restante:",0,63-16,1)
        self.display.rect(72+4,24+1,3,3,1)
        self.display.text("C",72+8,24,1)
        self.update_temp_actual(temp)
        self.display.show()

    def update_temp_actual(self,temp):
        self.display.fill_rect(40,24,8*4,8,0)
        self.display.text("{:.1f}".format(temp),40,24,1)
        self.display.show()

    def update_etapa(self,etapa):
        self.display.fill_rect(0,0,128,8,0)
        self.display.text(self.etapa[etapa],0,0,1)
        self.display.show()

    def update_tiempo_res(self,tiempo):
        self.display.fill_rect(0,63-8,128,8,0)
        self.display.text(str(tiempo)+" min",16,63-8,1)
        self.display.show()


    def update_temp(self,num,temp,color):
        self.display.fill_rect(self.temp_box[num][0],self.temp_box[num][1],16,8,0)
        self.display.text(str(temp),self.temp_box[num][0],self.temp_box[num][1],color)
        self.display.show()

    def update_tiempo(self,num,tiempo,color):
        self.display.fill_rect(self.tiempo_box[num][0],self.tiempo_box[num][1],16,8,0)
        self.display.text(str(tiempo),self.tiempo_box[num][0],self.tiempo_box[num][1],color)
        self.display.show()
