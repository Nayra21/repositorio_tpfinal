Personaje personaje;
Cronometro cronometro;
Caja caja;

public void setup(){
  size(800,800);
  personaje = new Personaje();
  cronometro = new Cronometro();
  cronometro.detener();
  caja=new Caja();
  
}
public void draw(){
  background(0);
  caja.display();
  personaje.display();
  personaje.empujar(caja);
  personaje.mover();
  cronometro.display();
  
 
}
