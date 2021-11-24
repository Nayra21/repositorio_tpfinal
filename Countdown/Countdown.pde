import ddf.minim.*;//PARA AUDIO
Minim minim;// PARA AUDIO
AudioPlayer music;//musica
AudioPlayer explocion;//explocion 
AudioPlayer grito;//grito
AudioPlayer victory;//victoria
Personaje personaje;
/*Polimorfismo*/
Flecha[] flechal2= new FlechaL2[16]; 
Flecha[] flechal3 = new FlechaL3[16];
/*-----------*/
Caja[]  caja=new Caja[8];
Escenario E;
Cronometro cronometro;
private int vidas=3; //cantidad de vidas del pj
private int ContCajas=ListaConstantes.ContC;//contador de cajas 
private int totalDeCajas=ListaConstantes.CajTot;//total de cajas 
private int nivel=1;//numero de nivel
private int AltBarra=20;//altura de la barra de informacion
private boolean star=true;//variable booleana para el start
private PFont tipof;//fuente de letra
private PImage fondoSigNivel, fondoPerder, fondoInicio, fondoFinal;//fondos de inicio, final de juego, cuando se pasa de nivel y cuando se pierde


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
      star=false;
    }
  }
  if (star==true) {
    IniciarJuego();
  } else
    if (ContCajas!=totalDeCajas) {
      music.play();//musica
      E.display();// escenario 
      personaje.display();//Muestra Personaje
      personaje.mover();// mueve el personaje
      mostrarBarra();//barra de informacion de nivel,puntaje,cantidad de vida y tiempo
      ejecutarCaja();//cajas de tnt 
      /*cuando el nivel sea mayor o igual al 2 se agregan mas obstaculos(flechas)*/
      if (nivel>=2) {
        Ejecutarflecha2(flechal2);//se llama al metodo flechas
      }
      if (nivel==3) {
        Ejecutarflecha3(flechal3);
      }
      /*si la cantidad de cajas juntadas es igual a la total se pasara de nivel*/
    } else if (ContCajas==totalDeCajas) {
      pasarNivel();//se llama al metodo pasarNivel
    }  
  /*si la cantidad de vidas del personaje es menor o igual que 0 se termina el juego*/
  if (vidas<=0) {
    PerderJuego();// se llama al metodo perder
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
    TerminarJuego();//se llama al meteodo Terminar Juego
  }
  /*cuando suene la explocion la musica c corta*/
  if (explocion.isPlaying()) {
    music.close();
  }
}


//--------------METODOS--------------------//

public void ejecutarCaja() {
  for (int i=0; i<caja.length; i++) {
    personaje.moverCaja(caja[i].getPosicion(), caja[i].getTamanio());//personaje mueve la caja
    caja[i].display();//muestra las cajas
    caja[i].Salir();//para sacar las cajas por las puertas
  }
}

public void Ejecutarflecha2(Flecha[] flechal2) {
  for (int i=0; i<flechal2.length; i++) {
    flechal2[i].display(); 
    flechal2[i].colisionar(personaje);
  }
}

public void Ejecutarflecha3(Flecha[] flechal3) {
  for (int i=0; i<flechal3.length; i++) {
    flechal3[i].display(); 
    flechal3[i].colisionar(personaje);
  }
}

public void mostrarBarra() {
  fill(#FFFFFF);
  textSize(22);
  text("Life: "+vidas, 525, 20);
  text("Time:", 650, 20);
  text("Score: "+ContCajas*100, 250, 20);
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

void IniciarJuego() { 
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

void PerderJuego() {
  fondoPerder=loadImage("perder.jpg");
  fondoPerder.resize(800, 800);
  background(fondoPerder);
  textSize(100);
  textAlign(CENTER);
  fill(#FFFFFF);
  text("YOU LOST", width/2, (height/2)-50); 
  textSize(60);
  text("Total Score: " +ContCajas*100, width/2, height/2+100);
  explocion.play();
}

void TerminarJuego() {
  music.close();
  victory.play();
  fondoFinal=loadImage("final.jpg");
  fondoFinal.resize(800, 800); 
  background(fondoFinal);
  textSize(120);
  text("YOU WIN", width/2, height/2-100);
  textSize(60);
  text("Total Score: " +ContCajas*100, width/2, height/2+100);
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
