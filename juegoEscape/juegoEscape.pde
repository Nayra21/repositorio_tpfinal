Personaje personaje;
Cronometro cronometro;

public void setup(){
  size(800,800);
  personaje = new Personaje();
  cronometro = new Cronometro();
  cronometro.detener();
  
}
public void draw(){
  background(0);
  personaje.display();
  personaje.mover();
  cronometro.display();
  
 
}
