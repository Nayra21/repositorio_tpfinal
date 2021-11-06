/**Representa el reloj que contara cuanto tiempo se debe sobrevivir en la tercer prueba
Esta clase no se visualiza, asi el jugador no sabra cuanto tiempo debe esperar*/
class Reloj{
  
  /**Representa los minutos*/
  private int minuto;
  /**Representa los segundos*/
  private int segundo;
  
  /**Constructor por defecto*/
  public Reloj(){
  }
  
  /**Metodo indica al reloj cuanto tiempo debera esperar el jugador*/
  public void contarTiempo(){
  }
  
  //---------------- Metodos Accesores ----------------//
  
  public void setMinuto(int minuto){
    this.minuto=minuto;
  }
  public int getMinuto(){
    return this.minuto;
  }
  
  public void setSegundo(int segundo){
    this.segundo=segundo;
  }
  public int getSegundo(){
    return this.segundo;
  }
}
