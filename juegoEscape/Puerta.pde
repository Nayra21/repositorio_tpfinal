/**Representa la subclase Puerta que ereda de AGameObject.
Se trata de la puerta por donde se sale de una prueba y cambiar a la siguiente*/
class Puerta extends GameObject{
  
  /**Representa el color de la puerta*/
  private color colorPuerta;
  /**Representa ela ncho de la puerta*/
  private int ancho;
  /**Representa el alto de la puerta*/
  private int alto;
  
  /**Constructor parametrizado*/
  public Puerta(PVector posicion, int ancho, int alto){
    this.posicion=posicion;
    this.ancho=ancho;
    this.alto=alto;
  }
  
  /**Visualiza la puerta en el escenario*/
  public void display(){
    rect(this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
  /**Metodo que abre la puerta una vez se presiono el boton*/
  public void abrir(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setColorPuerta(color colorPuerta){
    this.colorPuerta=colorPuerta;
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
