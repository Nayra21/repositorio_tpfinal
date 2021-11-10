/**Representa la cublcase Boton que ereda de AGameObject.
Se trata del boton que abrira la puerta en cada nivel*/
class Boton extends GameObject{
  
  /**Representa el tamaño del boton*/
  private int tamanio;
  /**Representa el color del boton*/
  private color colorBoton;  //cambia la ser activado
  
  /**Constructor parametrizado*/
  public Boton(PVector posicion){
    this.posicion=posicion;
    this.tamanio=40;
    this.colorBoton=color(255,0,0);
  }
  
  /**Visualiza el boton que abre la puerta*/
  public void display(){
    rectMode(CENTER);
    rect(this.posicion.x,this.posicion.y,this.tamanio,this.tamanio);
    color(this.colorBoton);
    circle(this.posicion.x,this.posicion.y,this.tamanio);
  }
  /**Metodo que verifica si el jugador presiono el boton*/
  public void activar(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setTamanio(int tamanio){
    this.tamanio = tamanio;
  }
  public int getTamanio(){
    return this.tamanio;  }
  
  public void setColorBoton(color colorBoton){
    this.colorBoton=colorBoton;
  }
  public color getColorBoton(){
    return this.colorBoton;
  }
}
