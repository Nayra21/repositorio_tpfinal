/**Representa la subclase Prueba1 que ereda de Prueba. Es el primer nivel*/
class Prueba1 extends Prueba{
  
  /**Representa el color del perno donde se colocan las cajas*/
  private color colorPerno;
  
  /**Constructor por defecto*/
  public Prueba1(){
  }
  
  /**Visualiza el escenario y sus elementos*/
  public void display(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setColorPerno(color colorPerno){
    this.colorPerno=colorPerno;
  }
  public color getColorPerno(){
    return this.colorPerno;
  }
}
