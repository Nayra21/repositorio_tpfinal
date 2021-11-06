/**Representa la pantalla final del juego, que muestra el tiempo que demoro el jugador.
Si gana o pierde se mostrara un mensaje diferente en cada situacion*/
class ResultadoFinal{
  
  /**Representa el mensaje que muestra la pantalla*/
  private String mensaje;
  /**Representa la variable que permite definir un mensaje de victoria o derrota*/
  private boolean victoria;
  
  /**Construcot por defecto*/
  public ResultadoFinal(){
  }
  
  /**Visualiza el mensaje*/
  public void display(){
    //codigo
  }
  /**Metodo que muestra la duracion total del juego*/
  public void mostrarTiempo(){
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setMensaje(String mensaje){
    this.mensaje=mensaje;
  }
  public String getMensaje(){
    return this.mensaje;
  }
  
  public void setVictoria(boolean victoria){
    this.victoria=victoria;
  }
  public boolean getVictoria(){
    return this.victoria;
  }
}
