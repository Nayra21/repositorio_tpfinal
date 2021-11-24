import ddf.minim.*;//PARA AUDIO
Minim minim;// PARA AUDIO
AudioPlayer music;//musica
AudioPlayer explocion;//explocion 
AudioPlayer grito;//grito
AudioPlayer victory;//victoria
Personaje personaje;
Caja[]  caja=new Caja[8];
FlechaL2[] flechal2=new FlechaL2[16];
FlechaL3[] flechal3 = new FlechaL3[16];
Escenario E;
Cronometro cronometro;
int vidas=3; //cantidad de vidas del pj
int contCajas=0;//contador de cajas 
int totalDeCajas=8;//total de cajas 
int nivel=1;//numero de nivel
int altBarra=20;//altura de la barra de informacion
boolean start=true;//variable booleana para el start
PFont tipof;//fuente de letra
PImage fondoSigNivel, fondoPerder, fondoInicio, fondoFinal;//fondos de inicio, final de juego, cuando se pasa de nivel y cuando se pierde


public void setup() {
  size(800, 800); //tamanio de lienzo
  tipof = createFont("RedOctober.ttf", 30);//se carga la fuente 
  textFont(tipof);
  minim = new Minim(this);    
  music = minim.loadFile("data/musicGame.mp3");//se carga la musica del juego  
  explocion = minim.loadFile("data/explocion.mp3");//se carga la sonido que suena cuando se pierde
  grito = minim.loadFile("data/menosVida.mp3");
  victory = minim.loadFile("data/victory.mp3");
  personaje = new Personaje();
  E= new Escenario();
  cronometro = new Cronometro();
  for (int i=0; i<caja.length; i++) {
    caja[i]=new Caja(new PVector((random(0, width)), (random(50, height-100))));
  }
  for (int i=0; i<flechal2.length; i++) {
    flechal2[i]=new FlechaL2(new PVector(random(0, width), (random(50, 750))));
  } 
  for (int i=0; i<flechal3.length; i++) {
    flechal3[i]=new FlechaL3(new PVector(random(0, width), random(15, height/2)));
  }
}


public void draw() {
  if (keyPressed) {
    if (key == 'j'||key=='J') {
      start=false;
    }
  }
  if (start==true) {
    iniciarJuego();
  } else
    if (contCajas!=totalDeCajas) {
      music.play();//musica
      E.display();// escenario 
      personaje.display();//Muestra Personaje
      personaje.mover();// mueve el personaje
      mostrarBarra();//barra de informacion de nivel,puntaje,cantidad de vida y tiempo
      ejecutarCaja();//cajas de tnt 
      /*cuando el nivel sea mayor o igual al 2 se agregan mas obstaculos(flechas)*/
      if (nivel>=2) {
        ejecutarFlecha2();//se llama al metodo flechas
      }
      if (nivel==3) {
        ejecutarFlecha3();
      }
      /*si la cantidad de cajas juntadas es igual a la total se pasara de nivel*/
    } else if (contCajas==totalDeCajas) {
      pasarNivel();//se llama al metodo pasarNivel
    }  
  /*si la cantidad de vidas del personaje es menor o igual que 0 se termina el juego*/
  if (vidas<=0) {
    perderJuego();// se llama al metodo perder
  }
  /*esta es la unica forma de perder vidas en el nivel 1
   si el tiempo en segundos es igual al tiempo limte(30) se descontara una vida*/
  if (nivel==1&&cronometro.segundo==30&&cronometro.milisegundo==0) {
    vidas--;//se descuenta una vida
    grito.play();
    /*si el tiempo en segundos es igual al tiempo limte(35) se descontara una vida*/
  } else if (nivel==2&&cronometro.segundo==35&&cronometro.milisegundo==0) {
    vidas--;//se descuenta una vida
    grito.play();
  } 
  /*si el tiempo es igual al tiempo limte(40 ) se descontara una vida*/
  else if (nivel==3&&cronometro.minuto==0&&cronometro.segundo==40&&cronometro.milisegundo==0) {
    vidas--;//se descuenta una vida    
    /*cuando se pase el nivel 3 se terimina el juego*/
  } else if (nivel>3) {
    terminarJuego();//se llama al meteodo Terminar Juego
  }
  /*cuando suene la explocion la musica c corta*/
  if (explocion.isPlaying()) {
    music.close();
  }
}


//--------------METODOS--------------------//

void ejecutarCaja() {
  for (int i=0; i<caja.length; i++) {
    personaje.moverCaja(caja[i].getPosicion(), caja[i].getTamanio());//personaje mueve la caja
    caja[i].display();//muestra las cajas
    caja[i].Salir();//para sacar las cajas por las puertas
  }
}

void ejecutarFlecha2() {
  for (int i=0; i<flechal2.length; i++) {
    flechal2[i].display(); 
    flechal2[i].colisionar(personaje);
  }
}

void ejecutarFlecha3() {
  for (int i=0; i<flechal3.length; i++) {
    flechal3[i].display(); 
    flechal3[i].colisionar(personaje);
  }
}

void mostrarBarra() {
  fill(#FFFFFF);
  textSize(22);
  text("Life: "+vidas, 525, 20);
  text("Time:", 650, 20);
  text("Score: "+contCajas*100, 250, 20);
  text("Level: "+nivel, 100, 20);
  cronometro.display();
}

void pasarNivel() {
  music.pause();
  fondoSigNivel=loadImage("fondodSigL.jpg");
  fondoSigNivel.resize(800, 800); 
  background(fondoSigNivel);
  fill(#FAFAFA);
  textSize(100);
  text("LEVEL"+" "+nivel, width/2, (height/2)-50);
  text("COMPLETED", width/2, (height/2)+50);
  if (keyCode==ENTER) {
    music.rewind();
    nivel++;
    cronometro = new Cronometro();
    personaje.setMostrar(true);
    for (int i=0; i<caja.length; i++) {
      caja[i]=new Caja(new PVector((random(0, width)), (random(50, height-50/2))));
    }    
    totalDeCajas+=8;
  }
}

void iniciarJuego() { 
  fondoInicio=loadImage("Inicio.jpg");
  fondoInicio.resize(800, 800); 
  background(fondoInicio);
  fill(#FAFAFA);
  textAlign(CENTER);
  textSize(100);  
  text("Countdown", width/2, 200);
  textSize(20);
  text("press j to start", width/2, 300);
}

void perderJuego() {
  fondoPerder=loadImage("perder.jpg");
  fondoPerder.resize(800, 800);
  background(fondoPerder);
  textSize(100);
  textAlign(CENTER);
  fill(#FFFFFF);
  text("YOU LOST", width/2, (height/2)-50); 
  textSize(60);
  text("Total Score: " +contCajas*100, width/2, height/2+100);
  explocion.play();
}

void terminarJuego() {
  music.close();
  victory.play();
  fondoFinal=loadImage("final.jpg");
  fondoFinal.resize(800, 800); 
  background(fondoFinal);
  textSize(120);
  text("YOU WIN", width/2, height/2-100);
  textSize(60);
  text("Total Score: " +contCajas*100, width/2, height/2+100);
}



//-------------------METODOS ACCESORES--------------------------//   
public void setContCajas(int ContCajas) {
  this.contCajas=ContCajas;
}
public int getContCajas() {
  return this.contCajas;
}


public void setAltBarra(int altBarra) {
  this.altBarra=altBarra;
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
