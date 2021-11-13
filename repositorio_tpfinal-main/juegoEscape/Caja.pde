/**Representa la subclase Caja que ereda de AGameObject.
Objeto se usa para completar el primer nivel*/
class Caja extends GameObject{
  
  /**Representa el tamaño de la caja*/
  private int tamanio;
  /**Representa el sprite usado para la caja*/
  private PImage sprite;
  
  /**Constructor por defecto*/
  public Caja(){
    this.tamanio=50;
    this.sprite=loadImage("resources/images/caja.png");
    this.posicion=new PVector(random(0,width),random(0,height));
  }
  
  /**Visualiza la caja*/
  public void display(){
    image(this.sprite,this.posicion.x,this.posicion.y,this.tamanio,this.tamanio);
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setTamanio(int tamanio){
    this.tamanio=tamanio;
  }
  public int getTamanio(){
    return this.tamanio;
  }
  
  public void setSprite(PImage sprite){
    this.sprite=sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
}
