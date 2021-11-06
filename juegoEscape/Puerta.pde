/**Representa la subclase Puerta que ereda de AGameObject.
Se trata de la puerta por donde se sale de una prueba y cambiar a la siguiente*/
class Puerta extends GameObject{
  
  /**Representa el color de la puerta*/
  private color colorPuerta;
  /**Representa ela ncho de la puerta*/
  private int ancho;
  /**Representa el alto de la puerta*/
  private int alto;
  
  /**Constructor por defecto*/
  public Puerta(){
  }
  
  /**Visualiza la puerta en el escenario*/
  public void display(){
    //codigo
  }
  /**Metodo que abre la puerta una vez se presiono el boton*/
  public void abrir(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setColorPuerta(color colorPuerta){
    this.posicion=posicion;
  }
  public color getColorPuerta(){
    return this.colorPuerta;
  }
  
  public void setAncho(int ancho){
    this.ancho=ancho;
  }
  public int getAncho(){
    return this.ancho;
  }
  
  public void setAlto(int alto){
    this.alto=alto;
  }
  public int getAlto(){
    return this.alto;
  }
}
