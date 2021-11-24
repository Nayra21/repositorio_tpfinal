abstract class Flecha {
  /**Representa la velocidad a la que se dispara la flecha*/
  protected PVector velocidad;
  /**Representa la posicion inicial de los objetos del juego*/
  protected PVector posicion;
  /**Representa los sprites de los objetos del juego*/
  protected PImage sprite;

  /**Constructor por defecto*/
  public Flecha() {
  }

  //--------------------ZONA DE METODOS-----------------------------//

  /**Visualiza las flechas disparadas*/
  public abstract void display() ;
  /**Mueve las flechas*/
  public abstract void mover();
  /**Realiza la colision de las felcahs con el personaje*/
  public abstract void colisionar(Personaje personaje);


  //---------------- Metodos Accesores ----------------//

  public void setVelocidad(PVector velocidad) {
    this.velocidad=velocidad;
  }
  public PVector getVelocidad() {
    return this.velocidad;
  }

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
