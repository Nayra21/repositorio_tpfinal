/**Representa la subclase Caja que ereda de AGameObject.
Objeto se usa para completar el primer nivel*/
class Caja extends GameObject{
  
  /**Representa el tamaño de la caja*/
  private int tamaño;
  /**Representa el sprite usado para la caja*/
  private PImage sprite;
  
  /**Constructor por defecto*/
  public Caja(){
  }
  
  /**Visualiza la caja*/
  public void display(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setTamaño(int tamaño){
    this.tamaño=tamaño;
  }
  public int getTamaño(){
    return this.tamaño;
  }
  
  public void setSprite(PImage sprite){
    this.sprite=sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
}
