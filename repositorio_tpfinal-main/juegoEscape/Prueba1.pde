/**Representa la subclase Prueba1 que ereda de Prueba. Es el primer nivel*/
class Prueba1 extends Prueba{
  
  /**Representa el color del boton donde se colocan las cajas*/
  private color colorBoton;
  private PImage suelo;
  
  /**Constructor por defecto*/
  public Prueba1(){
    this.suelo=loadImage("resources/images/prueba1.png");
    this.nombre="NOMBRE 1";
  }
  
  /**Visualiza el escenario y sus elementos*/
  public void display(){
    image(this.suelo,0,0,width,height);
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setColorBoton(color colorBoton){
    this.colorBoton=colorBoton;
  }
  public color getColorBoton(){
    return this.colorBoton;
  }
}
