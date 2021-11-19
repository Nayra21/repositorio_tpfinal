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
    this.posicion= new PVector (width/2, 0);
    this.velocidad = 6;
    sprite=loadImage("PJ.png");
    sprite.resize(40, 40);
  }

  /**Vusualiza al personaje en el juego*/
  public void display() {
    fill(#47FF00);
    image(sprite, this.posicion.x, this.posicion.y);
    limites();
  }

  /**Metodo que realiza el movimiento del personaje*/
  public void mover() {
    if (keyPressed && (key == CODED)) {
      if (keyCode == LEFT || keyCode=='a' || keyCode=='A' ) {
        this.posicion.x -= velocidad;
      } else if (keyCode == RIGHT|| keyCode=='d' || keyCode=='D' ) {
        posicion.x += velocidad;
      }
      if (keyCode == UP|| keyCode=='w' || keyCode=='W' ) {
        posicion.y -= velocidad;
      } else if (keyCode == DOWN|| keyCode=='s' || keyCode=='S' ) {
        posicion.y += velocidad;
      }
    }
  }

  //en esta seccion se habilita la colision con las paredes asi no sale de los limites del lienzo*/

  public void limites() { 
    if (posicion.y<0) {
      posicion.y=0;
    }
    if (posicion.y < getAltBarra()+5 && posicion.x<(width/2)-40) {
      posicion.y = getAltBarra()+5;
    }
    if (posicion.y < getAltBarra()+5 &&posicion.x>(width/2)+40) {
      posicion.y = getAltBarra()+5;
    } else if (posicion.y+40 >= height) {
      posicion.y = height - 45;
    }
    if (posicion.x < 0) {
      posicion.x = 0;
    } else if (posicion.x+40 > width) {
      posicion.x = width-40 ;
    }
  }

  public void moverCaja(PVector posicion, int tamanio) {
    //derecha
    if (this.posicion.x+40>=posicion.x && this.posicion.x+40<=posicion.x+tamanio && this.posicion.y>=posicion.y && this.posicion.y+40<=posicion.y+tamanio) {
      posicion.x=this.posicion.x+40;
    } 
    //izquierda
    else if (this.posicion.x<=posicion.x+tamanio && this.posicion.x>=posicion.x && this.posicion.y>=posicion.y && this.posicion.y+40<=posicion.y+tamanio) {
      posicion.x=this.posicion.x-tamanio;
    }
    //abajo
    else  if (this.posicion.y>=posicion.y-40&&this.posicion.y-40<=posicion.y&&this.posicion.x>=posicion.x&&this.posicion.x+20<=posicion.x+50) {
      posicion.y=this.posicion.y+40;
    } 
    //arriba 
    else  if (this.posicion.y<=posicion.y+tamanio && this.posicion.y>=posicion.y &&this.posicion.x>=posicion.x && this.posicion.x+20<=posicion.x+tamanio) {
      posicion.y=this.posicion.y-tamanio;
    }
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
