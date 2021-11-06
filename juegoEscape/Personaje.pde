/**Representa la subclase Personaje que ereda de AGameObject.
Es a quien interpreta el jugador dentro del juego*/
class Personaje extends GameObject{
  
  /**Representa el estado del personaje*/
  private boolean muerte;  //se inicia como falso
  /**Representa el sprite usado para el personaje*/
  private PImage sprite;
  
  /**Constructor por defecto*/
  public Personaje(){
    posicion = new PVector(width/2,height/2);
  }
  
  /**Vusualiza al personaje en el juego*/
  public void display(){
    fill(255,0,0);
    rect(posicion.x, posicion.y, 60, 60);
  }
  /**Metodo que realiza el movimiento del personaje*/
  public void mover(){
    if(keyPressed && (key == CODED)){
      if(keyCode == LEFT){
        posicion.x -= 5;
      }else if(keyCode == RIGHT){
        posicion.x += 5;
      }
      if(keyCode == UP){
        posicion.y -= 5;
      }else if(keyCode == DOWN){
        posicion.y += 5;
      }
      if(posicion.y < 0){
        posicion.y = 0;
      }else if(posicion.y+60 > height){
        posicion.y = height - 60;
      }
      if(posicion.x < 0){
        posicion.x = 0;
      }else if(posicion.x+60 > width){
        posicion.x = width - 60;
      }
    }
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
