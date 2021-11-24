class FlechaL3 extends Flecha {

  /**Constructor por defecto*/
  public FlechaL3(PVector posicion) {
    this.posicion=posicion;//las posiciones de las flechas seran random 
    this.velocidad=new PVector (0, (int( random(1, 3))));//la velocidad de las flechas en y sera random entre 1 y 3
    this.sprite=loadImage("flechaL3.png");//se carga la imagen de las felchas
    this.sprite.resize(15, 50);//se ajusta el tamanio de la imagen de las flechas
  }
  //--------------------ZONA DE METODOS-----------------------------//

  /**Visualiza las flechas disparadas*/
  public void display() {
    image(sprite, posicion.x, posicion.y);
    mover();
  }

  /**moviemiento de las flechas*/
  public void mover() {
    posicion.y+=velocidad.y;
    /*cuando la posicion en y de las flechas sea mayor que el ancho del lienzo*/
    if (posicion.y > height) { 
      posicion.y = 0;  //este volvera al inicio del lienzo (posicion 0 en eje y) 
      posicion.x=random(0, width);//y tendra una posicion random en eje x
    }
  }
  /**Metodo para que la flecha colisione con el personaje**/
  public void colisionar(Personaje personaje) {
    /*si la punta de la felcha es mayor o igual al lado superior del personje &&la punta de la flecha es menor que la base del personaje */
    if (this.posicion.y+50>=personaje.posicion.y &&this.posicion.y+50<personaje.posicion.y+40 &&
    /*y si la punta superior de la flecha es menor que el ancho del personaje && mayor o igual que el lado izq del personaje*/
      this.posicion.x+15<=personaje.posicion.x+40 && this.posicion.x+15>=personaje.posicion.x &&
    /*si la punta inferior de la flecha es mayor que el lado izq del personaje && si es menor que el ancho del personaje*/
      this.posicion.x>=personaje.posicion.x && this.posicion.x<=personaje.posicion.x+40) {
      /*si se cumplen estas condiciones habra colicion y*/
      personaje.velocidad=personaje.velocidad-1;//se resta -1 a a la velocidad del personaje
      personaje.posicion.x= width/2; //el persnoaje vuelve a la posicion establecida
      personaje.posicion.y=750;
      /*si la velocidad del personaje es menor o igual que cero volvera a su velocidad del principio (6) */
      if (personaje.velocidad<=0) {
        personaje.velocidad=6;
      }
    }
  }
}
