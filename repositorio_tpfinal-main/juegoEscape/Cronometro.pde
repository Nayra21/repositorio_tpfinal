/**Representa la subclase Cronometro que ereda de AGameObject.
 Muestra al jugador cuanto tiempo le lleva completar cada nivel, reniciandoce en cada ocacion*/
class Cronometro extends GameObject {

  /**Representa los segundos en el cronometro*/
  private int segundo;
  /**Representa los milisegundos en el cronometro*/
  private int milisegundo;
  /**Representa las minutos en el cronometro*/
  private int minuto;
  /**Representa la posicion de el cronometro*/
  private color col;

  /**Constructor por defecto*/
  public Cronometro() {
    this.milisegundo = 0;
    this.segundo = 0;
    this.minuto = 00;
    this.posicion = new PVector(width-40,30);
    this.col = (#000000);
  }

  /**Visualiza el cronometro en el lienzo*/
  public void display() {
    fill(col);
    textAlign(CENTER);
    textSize(20);
    if (milisegundo<59) {
      text(minuto+":"+segundo+":"+milisegundo, posicion.x, posicion.y);
      milisegundo=milisegundo+1;
    } else {
      if (segundo<59) {
        text(minuto+":"+segundo+":"+milisegundo, posicion.x, posicion.y);
        segundo = segundo+1;
        milisegundo= 0;
      } else {
        text(minuto+":"+segundo+":"+milisegundo, posicion.x, posicion.y);
        minuto=minuto+1;
        segundo=0;
        milisegundo=0;
      }
    }
  }
  /**Metodo que da inicio al cronometro cada vez que se inicia una prueba*/
  public void iniciar() {
    //codigo
  }
  /**Metodo que detiene el cronometro una vez se presiona el boton*/
  public void detener() {
    //codigo
    if (key==ENTER){
     text(minuto+":"+segundo+":"+milisegundo,posicion.x,posicion.y+20);
  
    
    }
  }

  //---------------- Metodos Accesores ----------------//

  public void setsegundo(int segundo) {
    this.segundo=segundo;
  }
  public int getsegundo() {
    return this.segundo;
  }

  public void setmilisegundo(int milisegundo) {
    this.milisegundo=milisegundo;
  }
  public int getmilisegundo() {
    return this.milisegundo;
  }

  public void setminuto(int minuto) {
    this.minuto=minuto;
  }
  public int getminuto() {
    return this.minuto;
  }
}
