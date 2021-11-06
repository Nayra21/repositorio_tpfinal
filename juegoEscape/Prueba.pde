/**Representa la superclase abstracta de la cual eredan todas las pruebas (niveles) del juego*/
abstract class Prueba{
  
  /**Representa el titulo que reciben las pruebas*/
  protected String nombre;
  /**Representa el color de las paredes de cada sala de prueba*/
  protected color colorPared;
  
  /**Metodo abstracto que visualiza el "escenario"*/
  public abstract void display();
  
  //---------------- Metodos Accesores ----------------//
  
  public void setNombre(String nombre){
    this.nombre=nombre;
  }
  public String getNombre(){
    return this.nombre;
  }
  
  public void setColorPared(color colorPared){
    this.colorPared=colorPared;
  }
  public color getColorPared(){
    return this.colorPared;
  }
}
