/**Representa la subclase Flecha que ereda de AGameObject.
 Se trata de los proyectiles que se dipararan al jugador en la tercer prueba*/
class Flecha extends GameObject {

  /**Representa la velocidad a la que se dispara la flecha*/
  private PVector velocidad;
  /**Representa el sprite usado para la flecha*/
  private PImage sprite;

  /**Constructor por defecto*/
  public Flecha() {
    this.posicion=new PVector(random(0, width), (random(50, 800)));
    this.velocidad=new PVector (int( random(4,10)), 0);
    sprite=loadImage("flecha.png");
    sprite.resize(50, 25);
  }

  /**Visualiza las flechas disparadas*/
  public void display() {
    fill(#F52916);
    image(sprite,posicion.x, posicion.y);
    drive();
  }

  public void drive() {
    posicion.x+=velocidad.x;
    if (posicion.x > width) { //cuando la posicion en X de los autos sea mayor que el ancho del lienzo
      posicion.x = 0;   
      posicion.y=random(50, 800);//este volvera al inicio del lienzo (posicion 0 en eje x)
    }
  }

  public void felchazos(Personaje personaje) {
    if (this.posicion.x+50==personaje.posicion.x && this.posicion.y+15<=personaje.posicion.y+40 && this.posicion.y+15>=personaje.posicion.y && this.posicion.y>=personaje.posicion.y && this.posicion.y<personaje.posicion.y+40) {
      personaje.posicion.x= width/2; 
      personaje.posicion.y=0;
      setVidas(vidas=vidas-1);
    }
     else if (this.posicion.x==personaje.posicion.x && this.posicion.y+15<=personaje.posicion.y+40 && this.posicion.y+15>=personaje.posicion.y && this.posicion.y>=personaje.posicion.y && this.posicion.y<personaje.posicion.y+40) {
      personaje.posicion.x= width/2; 
      personaje.posicion.y=0;
    }
    
   
  }



  //---------------- Metodos Accesores ----------------//

  public void setVelocidad(PVector velocidad) {
    this.velocidad=velocidad;
  }
  public PVector getVelocidad() {
    return this.velocidad;
  }

  public void setSprite(PImage sprite) {
    this.sprite=sprite;
  }
  public PImage getSprite() {
    return this.sprite;
  }
}
