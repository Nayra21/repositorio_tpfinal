/**Representa la cublcase Boton que ereda de AGameObject.
Se trata del boton que abrira la puerta en cada nivel*/
class Boton extends GameObject{
  
  /**Representa el tamaño del boton*/
  private int tamaño;
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
  
  public void setTamaño(int tamaño){
    this.tamaño=tamaño;
  }
  public int getTamaño(){
    return this.tamaño;
  }
  
  public void setColorBoton(color colorBoton){
    this.colorBoton=colorBoton;
  }
  public color getColorBoton(){
    return this.colorBoton;
  }
}
