/**Representa la subclase Personaje que ereda de AGameObject.
 Es a quien interpreta el jugador dentro del juego*/
class Personaje extends GameObject {

  /**Representa el estado del personaje*/
  private boolean muerte;  //se inicia como falso
  /**Representa el sprite usado para el personaje*/
  private PImage sprite;
  private int maxImages= 3;
  private int imageIndex =0;
  PImage  [] images = new PImage [maxImages];
  private float velocidad;

  /**Constructor por defecto*/
  public Personaje() {
    this.posicion= new PVector (100, 100);
    this.velocidad = 3;
  }

  /**Vusualiza al personaje en el juego*/
  public void display() {
    for (int i = 0; i< images.length; i++) { 
      images[i] = loadImage("resources/images/PJ_" + i + ".png");
      images[i].resize(50, 50);
      imageMode(CENTER);
    }
    image(images[imageIndex], posicion.x, posicion.y);
    imageIndex = (imageIndex+1)% images.length;
  }



  /**Metodo que realiza el movimiento del personaje*/
  public void mover() {
    if (keyPressed && (key == CODED)) {
      if (keyCode == LEFT) {
         for (int i = 4; i< images.length; i++) { 
      images[i] = loadImage("resources/images/PJ_" + i + ".png");
      images[i].resize(50, 50);
      imageMode(CENTER);
    }
    image(images[imageIndex], posicion.x, posicion.y);
    imageIndex = (imageIndex+1)% images.length;
        
        this.posicion.x -= velocidad;
      } else if (keyCode == RIGHT) {
        posicion.x += velocidad;
      }
      if (keyCode == UP) {
        posicion.y -= velocidad;
      } else if (keyCode == DOWN) {
        posicion.y += velocidad;
      }
    }
  }
  /**Metodo que permite empujar las cajas del primer nivel*/
  public void empujar() {
  }

  //---------------- Metodos Accesores ----------------//

  public void setMuerte(boolean muerte) {
    this.muerte=muerte;
  }
  public boolean getMuerte() {
    return this.muerte;
  }

  public void setSprite(PImage sprite) {
    this.sprite=sprite;
  }
  public PImage getSprite() {
    return this.sprite;
  }
}
