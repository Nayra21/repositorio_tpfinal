/**Representa la subclase Cronometro que hereda de AGameObject*/
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
    this.posicion = new PVector(width-70, 20);
    this.col = (#FFFFFF);
  }

  //--------------------ZONA DE METODOS-----------------------------//

  /**Visualiza el cronometro en el lienzo*/
  public void display() {
    fill(col);//color del cronometro
    textAlign(CENTER);
    textSize(20);//tamanio de los numeros del cronometro
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
