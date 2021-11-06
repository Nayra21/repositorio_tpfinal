/**Representa la subclase Cronometro que ereda de AGameObject.
Muestra al jugador cuanto tiempo le lleva completar cada nivel, reniciandoce en cada ocacion*/
class Cronometro extends GameObject{
  
   /**Representa los minutos en el cronometro*/
   private int minuto;
   /**Representa los segundos en el cronometro*/
   private int segundo;
   /**Representa las horas en el cronometro*/
   private int hora;
   
   /**Constructor por defecto*/
   public Cronometro(){
   }
   
   /**Visualiza el cronometro en el lienzo*/
   public void display(){
     //codigo
   }
   /**Metodo que da inicio al cronometro cada vez que se inicia una prueba*/
   public void iniciar(){
     //codigo
   }
   /**Metodo que detiene el cronometro una vez se presiona el boton*/
   public void detener(){
     //codigo
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
  
  public void setHora(int hora){
    this.hora=hora;
  }
  public int getHora(){
    return this.hora;
  }
}
