Personaje personaje;

public void setup(){
  size(800,800);
  personaje = new Personaje();
  
  
}
public void draw(){
  background(0);
  personaje.display();
  personaje.mover();
}
