/**Representa la subclase Flecha que ereda de AGameObject.
Se trata de los proyectiles que se dipararan al jugador en la tercer prueba*/
class Flecha extends GameObject{
  
  /**Representa la velocidad a la que se dispara la flecha*/
  private PVector velocidad;
  /**Representa el sprite usado para la flecha*/
  private PImage sprite;
  
  /**Constructor por defecto*/
  public Flecha(){
  }
  
  /**Visualiza las flechas disparadas*/
  public void display(){
    //codigo
  }
  /**Metodo que dispara las flechas*/
  public void disparar(){
    //codigo
  }
  /**Metodo que detecta cuando una flecha alcanzo al personaje*/
  public void impactar(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setSprite(PImage sprite){
    this.sprite=sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
}
