/**Representa la subclase Prueba1 que ereda de Prueba. Es el primer nivel*/
class Prueba2 extends Prueba {
  /**Representa el color del boton donde se colocan las cajas*/
  private PVector tamanioLLave;
  private PImage puerta1;
  private PImage puerta2;
  private PImage suelo2;

  /**Constructor por defecto*/
  public Prueba2() {
    suelo2=loadImage("suelo2.jpg");
    suelo2.resize(800,800);
    this.tamanioLLave=new PVector(80, 60);
    puerta1=loadImage("puerta.jpg");
    puerta2=loadImage("puerta1.jpg");
    puerta1.resize(80,60);
    puerta2.resize(80,60);

  }

  /**Visualiza el escenario y sus elementos*/
  public void display() {    
    image(suelo2,0,0,width,height); 
// background(0);
    llave();
  }

  public void llave() {
    fill(#CFFF00);
    image(puerta1,width/2-25, 0);
    image(puerta2,width/2-25, 740);
  }

  //---------------- Metodos Accesores ----------------//

  public void setTamanioLLave(PVector tamanioLLave) {
    this.tamanioLLave=tamanioLLave;
  }
  public PVector getTamanioLLave() {
    return this.tamanioLLave;
  }
}
