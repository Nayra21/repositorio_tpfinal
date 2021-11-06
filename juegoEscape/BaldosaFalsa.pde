/** Representa la subclase BaldosaFalsa que ereda de AGameObject.
Se trata de las baldosas falsas usadas en la Prueba2*/
class BaldosaFalsa extends GameObject{
  
  /** Representa el color que tendra las baldosas falsas*/
  private color colorBaldosaF;  //cambia si se rompe
  /** Representa el tamaño de las baldosas falsas*/
  private int tamanio;
  
  /**Constructor por defecto*/
  public BaldosaFalsa(){
  }
  
  /**Visualiza en el lienzo las baldosas trampa*/
  public void display(){
    //codigo
  }
  
  /**Metodo que rompe la baldosa al detectar al personaje*/
  public void romper(){ 
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setColorBF(color colorBF){
    this.colorBaldosaF=colorBF;
  }
  public color getColorBF(){
    return this.colorBaldosaF;
  }
  
  public void setTamanio(int tamanio){
    this.tamanio=tamanio;
  }
  public int getTamanio(){
    return this.tamanio;
  }
}
