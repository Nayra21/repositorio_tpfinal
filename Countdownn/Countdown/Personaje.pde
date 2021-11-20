/**Representa la subclase Personaje que ereda de AGameObject.
 Es a quien interpreta el jugador dentro del juego*/
class Personaje extends GameObject {
  /**Representa la velocidad del personaje*/
  private float velocidad;
  /**sprites para los perfiles del personje**/
  PImage[] sprite = new PImage[4];
  /**variable booleana aux para los perfiles**/
  boolean mostrar =true;

  /**Constructor por defecto*/
  public Personaje() {
    this.posicion= new PVector (width/2-20, 0);
    this.velocidad = 6;
    this.sprite[0]=loadImage("PJ.png");
    this.sprite[0].resize(40, 40);
    this.sprite[1]=loadImage("PU_1.png");
    this.sprite[1].resize(40, 40);
    this.sprite[2]=loadImage("PI_1.png");
    this.sprite[2].resize(40, 40);
    this.sprite[3]=loadImage("PR_1.png");
    this.sprite[3].resize(40, 40);
  }
  //-----------------------ZONA DE METODOS-----------------------//

  /**Vusualiza al personaje en el juego*/
  public void display() {
    if (mostrar==true) {
      image(sprite[0], this.posicion.x, this.posicion.y);
    }
    ColisionarBordes();
    cambiarPerfil();
  }

  /**Metodo que realiza el movimiento del personaje*/
  public void mover() {
    if (keyPressed && (key == CODED)) {
      //izquierda
      if (keyCode == LEFT || keyCode=='a' || keyCode=='A' ) {              
        this.posicion.x -= velocidad;
      }//derecha 
      else if (keyCode == RIGHT|| keyCode=='d' || keyCode=='D' ) {
        posicion.x += velocidad;
      }
      //arriba
      if (keyCode == UP|| keyCode=='w' || keyCode=='W' ) {
        posicion.y -= velocidad;
        //abajo
      } else if (keyCode == DOWN|| keyCode=='s' || keyCode=='S' ) {
        posicion.y += velocidad;
      }
    }
  }

  /**Metodo para colisionar con los bordes**/
  public void ColisionarBordes() { 
    if (posicion.y<0) {
      posicion.y=0;
    }
    if (posicion.y+40>height) {
      posicion.y=height-40;
    } 
    if (posicion.y < getAltBarra()+25 && posicion.x<(width/2)-40) {
      posicion.y = getAltBarra()+25;
    }
    if (posicion.y < getAltBarra()+25 &&posicion.x>(width/2)+40) {
      posicion.y = getAltBarra()+25;
    } else if (posicion.y+40 >= 770&&posicion.x+40>440||posicion.y+40 >= 770&&posicion.x<360) {
      posicion.y = 770-40;
    }
    if (posicion.x <= 0) {
      posicion.x = 0;
    } else if (posicion.x+40 > width) {
      posicion.x = width-40 ;
    }
  }
  
  /**Metodo para mover caja**/
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
  
  /**Metodo para cambiar el perfil del personaje*/
  public void cambiarPerfil() {    
    if (keyCode== LEFT || keyCode=='a' || keyCode=='A' ) {           
      image(sprite[2], this.posicion.x, this.posicion.y);
      mostrar=false;
    }    
    if (keyCode == RIGHT || keyCode=='d' || keyCode=='D' ) {           
      image(sprite[3], this.posicion.x, this.posicion.y);
    }    
    if (keyCode == UP || keyCode=='w' || keyCode=='W' ) {           
      image(sprite[1], this.posicion.x, this.posicion.y);
    }
    if (keyCode == DOWN || keyCode=='s' || keyCode=='S' ) {           
      image(sprite[0], this.posicion.x, this.posicion.y);
    }
  }


  //---------------- Metodos Accesores ----------------//

  public void setVelocidad(float velocidad) {
    this.velocidad=velocidad;
  }
  public float getVelocidad() {
    return this.velocidad;
  }

  public void setMostrar(boolean mostrar) {
    this.mostrar=mostrar;
  }
  public boolean getMostrar() {
    return this.mostrar;
  }
}
