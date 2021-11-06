/**Representa la cublcase Boton que ereda de AGameObject.
Se trata del boton que abrira la puerta en cada nivel*/
class Boton extends GameObject{
  
  /**Representa el tamaño del boton*/
  private int tamanio;
  /**Representa el color del boton*/
  private color colorBoton;  //cambia la ser activado
  
  /**Constructor por defecto*/
  public Boton(){
  }
  
  /**Visualiza el boton que abre la puerta*/
  public void display(){ 
    //codigo
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
