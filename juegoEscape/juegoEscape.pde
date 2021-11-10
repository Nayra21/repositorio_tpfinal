Personaje personaje;
Cronometro cronometro;
Caja caja;
Prueba1 P1;
public void setup(){
  size(500,500);
  personaje = new Personaje();
  cronometro = new Cronometro();
  cronometro.detener();
  caja=new Caja();
  P1= new Prueba1();
}

public void draw(){
  //background(0);
  P1.display();
  caja.display();
  personaje.display();
  personaje.empujar(caja);
  personaje.mover();
  cronometro.display();
  
 
}
