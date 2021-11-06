/**Representa la subclase Personaje que ereda de AGameObject.
Es a quien interpreta el jugador dentro del juego*/
class Personaje extends GameObject{
  
  /**Representa el estado del personaje*/
  private boolean muerte;  //se inicia como falso
  /**Representa el sprite usado para el personaje*/
  private PImage sprite;
  
  /**Constructor por defecto*/
  public Personaje(){
  }
  
  /**Vusualiza al personaje en el juego*/
  public void display(){
    
  }
  /**Metodo que realiza el movimiento del personaje*/
  public void caminar(){
    
  }
  /**Metodo que permite empujar las cajas del primer nivel*/
  public void empujar(){
    
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setMuerte(boolean muerte){
    this.muerte=muerte;
  }
  public boolean getMuerte(){
    return this.muerte;
  }
  
  public void setSprite(PImage sprite){
    this.sprite=sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
}
