/**Representa la subclase Flecha que ereda de AGameObject.
 Se trata de los proyectiles que se dipararan al jugador en la tercer prueba*/
class Flecha extends GameObject {

  /**Representa la velocidad a la que se dispara la flecha*/
  private PVector velocidad;
  /**Representa el sprite usado para la flecha*/
  private PImage sprite;

  /**Constructor por defecto*/
  public Flecha() {
    this.posicion=new PVector(random(0, width), (random(70, 720)));
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
    if (posicion.x > width) { //cuando la posicion en X de sea mayor que el ancho del lienzo
      posicion.x = 0;   //este volvera al inicio del lienzo (posicion 0 en eje x)
      posicion.y=random(70, 720);
    }
  }

  public void felchazos(Personaje personaje) {
    
    boolean colision = true;   //estado de la colision, inicia como falso
    
    /*condiciones que marcan una distancia entre la posicion inicial de objetos.
    Si se cumplen no habra colision.*/
    if((this.posicion.x+50) <= personaje.getPosicion().x){
      colision = false;
    }
    
    if(this.posicion.x >= (personaje.getPosicion().x+40)){
      colision = false;
    }
    
    if((this.posicion.y+25) <= personaje.getPosicion().y){
      colision = false;
    }
    
    if(this.posicion.y >= (personaje.getPosicion().y+40)){
      colision = false;
    }
    
    /*en caso de que la distancia sea menor a la establecida, habra colision*/
    if(colision){
      personaje.posicion.x= width/2; 
      personaje.posicion.y=0;
      setVidas(vidas = vidas-1);  
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
