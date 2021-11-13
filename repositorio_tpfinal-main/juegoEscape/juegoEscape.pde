Personaje personaje;
Cronometro cronometro;
Caja[] caja=new Caja[8];
Prueba1 P1;
public void setup(){
  size(500,500);
  personaje = new Personaje();
  cronometro = new Cronometro();
  cronometro.detener();
  for (int i=0;i<caja.length;i++){
  caja[i]=new Caja();
  }
  P1= new Prueba1();
}

public void draw(){
  //background(0);
  P1.display();
 for (int i=0;i<caja.length;i++){
   
 caja[i].display();
 }
  // personaje.empujar(cajas);

  personaje.display();
  
  personaje.mover();
  cronometro.display();
  
 
}
