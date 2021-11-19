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
    this.velocidad=new PVector (int( random(4, 10)), 0);
    sprite=loadImage("flecha.png");
    sprite.resize(50, 15);
  }

  /**Visualiza las flechas disparadas*/
  public void display() {
    fill(#F52916);
    image(sprite, posicion.x, posicion.y);
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
    //si la punta de la felcha es mayor o igual al lado izquierdo del personje &&la punta de la flecha es menor que el ancho del personaje 
    if (this.posicion.x+50>=personaje.posicion.x &&this.posicion.x+50<personaje.posicion.x+40 &&
      //y si la punta superior de la flecha es menor que el alto del personaje && mayor o igual que los pies del personaje
      this.posicion.y+15<=personaje.posicion.y+40 && this.posicion.y+15>=personaje.posicion.y &&
      //si la punta inferior de la flecha es mayor que los pies del personaje && si es menor que la altura del personaje
      this.posicion.y>=personaje.posicion.y && this.posicion.y<=personaje.posicion.y+40) {
      //si se cumplen estas condiciones habra colicion y
      personaje.posicion.x= width/2; //el personaje volvera a la posicion x e y del comienzo
      personaje.posicion.y=0;
      setVidas(vidas=vidas-1);//y se le descontara una vida
    }    
    
    
    
    
    
    /*else 
    //si la cola de la flecha es igual a la parte izquierda del peronsaje  
    if (this.posicion.x<=personaje.posicion.x+40 &&
      //&&si la posicion en Y de la cola de la flecha es menor que la altura del personaje y mayor que su pies
      this.posicion.y+15<=personaje.posicion.y+40 && this.posicion.y+15>=personaje.posicion.y && 
      //si la posicion en y de la cola es mayor q los pies del personaje && menor que su altura
      this.posicion.y>=personaje.posicion.y && this.posicion.y<personaje.posicion.y+40) {        
      personaje.posicion.x= width/2; //vuelve a su posicion inicial en X e y
      personaje.posicion.y=0;
      setVidas(vidas=vidas-1);// se le descuenta una vida
    }*/
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
