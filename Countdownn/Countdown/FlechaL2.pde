class FlechaL2 extends Flecha {

  /**Constructor por defecto*/
  public FlechaL2(PVector posicion) {
    this.posicion=posicion;//las posiciones de las flechas seran random 
    this.velocidad=new PVector (int( random(4, 10)), 0);//la velocidad de las flechas en x sera random entre 4 y 10
    this.sprite=loadImage("flecha.png");//se carga la imagen de las felchas
    this.sprite.resize(50, 15);//se ajusta el tamanio de la imagen de las flechas
  }

  //--------------------ZONA DE METODOS-----------------------------//

  /**Visualiza las flechas disparadas*/
  public void display() {
    fill(#F52916);
    image(sprite, posicion.x, posicion.y);
    mover();
  }
  
  /**Mueve las felchas*/
  public void mover() {
    posicion.x+=velocidad.x;
    /*cuando la posicion en x de las flechas sea mayor que el ancho del lienzo*/
    if (posicion.x > width) { 
      posicion.x = 0;   //este volvera al inicio del lienzo (posicion 0 en eje x)
      posicion.y=random(50, 800);// y tendra una posicion random ne el exe y
    }
  }
  
  /**realiza la colision de las flechas con el personaje*/
  public void colisionar(Personaje personaje) {
    /*si la punta de la felcha es mayor o igual al lado izquierdo del personje &&la punta de la flecha es menor que el ancho del personaje */
    if (this.posicion.x+50>=personaje.posicion.x &&this.posicion.x+50<personaje.posicion.x+40 &&
    /*y si la punta superior de la flecha es menor que el alto del personaje && mayor o igual que los pies del personaje*/
      this.posicion.y+15<=personaje.posicion.y+40 && this.posicion.y+15>=personaje.posicion.y &&
    /*si la punta inferior de la flecha es mayor que los pies del personaje && si es menor que la altura del personaje*/
      this.posicion.y>=personaje.posicion.y && this.posicion.y<=personaje.posicion.y+40) {
      /*si se cumplen estas condiciones habra colicion y*/
      personaje.posicion.x= width/2; //el personaje volvera a la posicion x e y del comienzo
      personaje.posicion.y=0;
      setVidas(vidas=vidas-1);//y se le descontara una vida
      grito.play();
      grito.rewind();
    }
  }
}
