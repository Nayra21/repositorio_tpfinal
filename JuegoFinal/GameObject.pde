/** Representa la superclase abstracta de la cual eredaran todos los objetos del juego*/
abstract class GameObject {

  /**Representa la posicion inicial de los objetos del juego*/
  protected PVector posicion;

  /**Metodo abstracto para visualizar los objetos*/
  public abstract void display();

  //---------------- Metodos Accesores ----------------//

  public void setPosicion(PVector posicion) {
    this.posicion=posicion;
  }
  public PVector getPosicion() {
    return this.posicion;
  }
}
