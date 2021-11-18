/**Representa la subclase Caja que ereda de AGameObject.
 Objeto se usa para completar el primer nivel*/
class Caja extends GameObject {
  private int tamanio;
  /**Representa el sprite usado para la caja*/
  private PImage sprite;

  /**Constructor por defecto*/
  public Caja() {
    this.tamanio=50;
    this.posicion=new PVector((random(0, width)), (random(50, height-(tamanio/2))));
    sprite=loadImage("caja.png");
    sprite.resize(tamanio,tamanio);
  }

  /**Visualiza la caja*/
  public void display() {
    fill(#FFFFFF);
    image(sprite,this.posicion.x, this.posicion.y);
    limite();
  }


  public void limite() {   
    //derecha
    if (posicion.x+tamanio>width) {
      posicion.x=posicion.x-100;
    }
    //izquierda
    if (posicion.x<0) {
      posicion.x=posicion.x+tamanio;
    }
    //puerta arriba
    if (posicion.y<=AltBarra&&posicion.x<(360)&&tamanio>AltBarra) {
      posicion.y+=AltBarra;
    }
    if (posicion.y<=AltBarra&&posicion.x>(440)&&tamanio>AltBarra) {
      posicion.y=AltBarra;
    }
    //puerta abajo
    if (posicion.y+40>height&&posicion.x<360) {
      posicion.y=height-tamanio;
    }
    if (posicion.y+40>height&&posicion.x>440) {
      posicion.y=height-tamanio;
    }
  }

  public void CajaALLave() {
    if (this.posicion.y+this.tamanio<=0||this.posicion.y>=height) {
      this.tamanio=0;      
      this.posicion.y=1;
      this.posicion.x=0;     
      sprite.resize(1,1);
      println("listo");
      ContCajas=ContCajas+1;
      println(ContCajas);
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
