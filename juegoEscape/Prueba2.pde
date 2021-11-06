/**Representa la subclase Prueba2 que ereda de Prueba. Es el segundo nivel*/
class Prueba2 extends Prueba{
  
  /**Representa el tamaño de las baldosas que conforman el suelo del escenario*/
  private int tamBaldosa;
  
  /**Constructor por defecto*/
  public Prueba2(){
  }
  
  /**Visualiza el escenario y sus elementos*/
  public void display(){
    //codigo
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setTamBaldosa(int tamBaldosa){
    this.tamBaldosa=tamBaldosa;
  }
  public int getTamBaldosa(){
    return this.tamBaldosa;
  }
}
