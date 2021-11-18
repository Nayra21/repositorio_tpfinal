Personaje personaje;
Caja[]  caja=new Caja[8];
Flecha[] flecha=new Flecha[16];
Prueba1 P1;
Cronometro cronometro;
int vidas=3;
int ContCajas=0;
int totalDeCajas=1;
int nivel=1;
int LimitTiempo=5;
int AltBarra=20;

public void setup() {
  size(800, 800); 
frameRate(160); 

  personaje = new Personaje();
  P1= new Prueba1();
  cronometro = new Cronometro();
  for (int i=0; i<caja.length; i++) {
    caja[i]=new Caja();
  }
  for (int i=0; i<flecha.length; i++) {
    flecha[i]=new Flecha();
  }
}

public void draw() {  
  P1.display();//Primer escenario 
  barra();//barra de infromacion
  personaje.display();//Muestra Personaje
personaje.mover();// mueve el personaje
 caja();
  flechas();
 

 /*if (cronometro.segundo==LimitTiempo&&cronometro.milisegundo==LimitTiempo&&ContCajas!=totalDeCajas) {
    vidas=2;*/
    
   if (vidas==0) {
    background(#0AC660);
    textSize(100);
    textAlign(CENTER);
    fill(#FFFFFF);
    text("PERDISTE", width/2, (height/2)-50);      
    textSize(50);
    text("precione ENTER para reiniciar", width/2, (height/2));
    if (keyCode==ENTER) {
      setup();
    }
  }
}

void caja(){
  //caja
  for (int i=0; i<caja.length; i++) {
    personaje.moverCaja(caja[i].getPosicion(), caja[i].getTamanio());//personaje mueve la caja
    caja[i].display();//muestra las cajas
    caja[i].CajaALLave();//para sacar las cajas por las puertas
  }
}

void flechas(){
   //flechas
  for (int i=0; i<flecha.length; i++) {
    flecha[i].display(); 
    flecha[i].felchazos(personaje);
  }

}


void barra() {
  //Barra de informacion 
  fill(#7E5032);
  rect(0, 0, (width/2)-25, 25);
  rect((width/2)+55, 0, width, 25);
  fill(#FFFFFF);
  textSize(22);
  text("Life: "+vidas, 550, 20);
  text("Time:", 660, 20);
  text("Cajas Juntadas: "+ContCajas, 200, 20);
  cronometro.display();
}

void pasarNivel() {
  background(#0AC660);
  textSize(100);
  text("NIVEL"+" "+nivel, width/2, (height/2)-50);
  text("SUPERADO", width/2, (height/2)+50);
  ContCajas=0;
}








//-------------------METODOS ACCESORES--------------------------//   
public void setContCajas(int ContCajas) {
  this.ContCajas=ContCajas;
}
public int getContCajas() {
  return this.ContCajas;
}



public void setAltBarra(int AltBarra) {
  this.AltBarra=AltBarra;
}
public int getAltBarra() {
  return this.vidas;
}


public void setVidas(int vidas) {
  this.vidas=vidas;
}
public int getVidas() {
  return this.vidas;
}
