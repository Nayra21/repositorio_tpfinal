/**Representa la subclase Caja que ereda de AGameObject.
 Objeto se usa para completar el primer nivel*/
class Caja extends GameObject {
  /*tamanio de la caja(ancho y alto)*/
  private int tamanio;

  /**Constructor por defecto*/
  public Caja(PVector posicion) {
    this.tamanio=50;
    this.posicion= posicion;
    this.sprite=loadImage("caja.jpg");
    this.sprite.resize(tamanio, tamanio);
  }
  //-------------------ZONA DE METODOS----------------//

  /**Visualiza la caja*/
  public void display() {
    fill(#FFFFFF);
    image(sprite, this.posicion.x, this.posicion.y);
    ColisionarBordes();
  }
  /**metodo para la colision**/
  public void ColisionarBordes() {   
    //derecha
    if (posicion.x+tamanio>width) {
      posicion.x=posicion.x-100;
    }
    //izquierda
    if (posicion.x<0) {
      posicion.x=posicion.x+tamanio;
    }
    //puerta arriba
    if (posicion.y<=AltBarra&&posicion.x+15<(width/2)-25&&tamanio>AltBarra) {
      posicion.y+=AltBarra;
    }
    if (posicion.y<=AltBarra&&posicion.x+15>(width/2)+25&&tamanio>AltBarra) {
      posicion.y=AltBarra;
    }
    //puerta abajo
    if (posicion.y+40>=height-50 && posicion.x<=(width/2)-25 && posicion.x+tamanio<=(width/2)-25) {
      posicion.y=height-80;
    }
    if (posicion.y+40>=height-50 && posicion.x>=(width/2)+25 && posicion.x+tamanio>=(width/2)+25) {
      posicion.y=height-80;
    }
  }
  /**metodo para que las cajas salgan del escenario*/
  public void Salir() {
    if (this.posicion.y+this.tamanio<=0||this.posicion.y>=height) {
      this.tamanio=0;      
      this.posicion.y=1;
      this.posicion.x=0;     
      sprite.resize(1, 1);
      ContCajas=ContCajas+1;
    }
  }


  //---------------- Metodos Accesores ----------------//

  public void setTamanio(int tamanio) {
    this.tamanio=tamanio;
  }
  public int getTamanio() {
    return this.tamanio;
  }
}
