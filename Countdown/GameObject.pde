abstract class GameObject {

  /**Representa la posicion inicial de los objetos del juego*/
  protected PVector posicion;
  /**Representa los sprites de los objetos del juego*/
  protected PImage sprite;

  /**Metodo abstracto para visualizar los objetos*/
  public abstract void display();

  //---------------- Metodos Accesores ----------------//

  public void setPosicion(PVector posicion) {
    this.posicion=posicion;
  }
  public PVector getPosicion() {
    return this.posicion;
  }

  public void setSprite(PImage sprite ) {
    this.sprite=sprite;
  }
  public PImage getSprite() {
    return this.sprite;
  }
}
