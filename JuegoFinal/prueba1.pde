/**Representa la subclase Prueba1 que ereda de Prueba. Es el primer nivel*/
class Prueba1 extends Prueba {
  private PImage puerta1;
  private PImage puerta2;
  private PImage suelo;

  /**Constructor por defecto*/
  public Prueba1() {
    suelo=loadImage("suelo.png");
    suelo.resize(800,600);
    puerta1=loadImage("puerta.jpg");
    puerta2=loadImage("puerta1.jpg");
    puerta1.resize(80,60);
    puerta2.resize(80,60);

  }

  /**Visualiza el escenario y sus elementos*/
  public void display() {    
    image(suelo,0,0,width,height);
    image(puerta1,width/2-25, 0);
    image(puerta2,width/2-25, height-60);
  }


  //---------------- Metodos Accesores ----------------//

  
}
