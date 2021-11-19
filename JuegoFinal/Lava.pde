/**Representa la subclase Caja que ereda de AGameObject.
 Objeto se usa para completar el primer nivel*/
class Lava extends GameObject {
  private int tamanio;
  /**Representa el sprite usado para la caja*/
  private PImage sprite;
  private PVector posicion[]= new PVector[4];
  /**Constructor por defecto*/
  public Lava() {
    this.tamanio=100;
    this.posicion[0]=new PVector(int (random(1, 8))*100, int (random(2, 7))*100);
    this.posicion[1]=new PVector(int (random(1, 8))*100, int (random(2, 7))*100);
    this.posicion[2]=new PVector(int (random(1, 8))*100, int (random(2, 7))*100);
    this.posicion[3]=new PVector(int (random(1, 8))*100, int (random(2, 7))*100);
    sprite=loadImage("lava.jpg");
    sprite.resize(tamanio, tamanio);
  }

  /**Visualiza la caja*/
  public void display() {
    fill(#FFFFFF);
    for (int i = 0; i < posicion.length; i++) {
      image(sprite, this.posicion[i].x, this.posicion[i].y);
    }
  }





  //---------------- Metodos Accesores ----------------//

  public void setTamanio(int tamanio) {
    this.tamanio=tamanio;
  }
  public int getTamanio() {
    return this.tamanio;
  }

  public void setSprite(PImage sprite) {
    this.sprite=sprite;
  }
  public PImage getSprite() {
    return this.sprite;
  }
}
