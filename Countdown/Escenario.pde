/**Representa El escenario del Juego*/
class Escenario {
  /**imagen de las salidas**/
  private PImage salida;
  /**imagen del suelo**/
  private PImage suelo;
  /**imagen de las paredes**/
  private PImage pared;

  /**Constructor por defecto*/
  public Escenario() {
    suelo=loadImage("suelo.jpg");//se carga la imagen del suelo
    suelo.resize(800, 600);//tamanio de la imagen del suelo
    salida=loadImage("porton.jpg");//se carga la imagen de la salida
    salida.resize(80, 30);//tamanio de la imagen de la salida
    pared=loadImage("pared.jpg");//se carga la imagen de las paredes 
    pared.resize(360, 30);//tamanio de la imagen de las paredes
  }
  
  
//--------------------ZONA DE METODOS-----------------------------//

  /**Visualiza el escenario y sus elementos*/
  public void display() {    
    /*suelo*/
    image(suelo, 0, 0, width, height); 
    /*salida de arriba*/
    image(salida, width/2-40, 0);   
    /*salida de abajo*/
    image(salida, width/2-40, 770);
    /*pared de abajo der*/
    image(pared, width/2+40, 770);    
    /*pared de arriba izq*/
    image(pared, 0, 770);
    /*pared de arriba der*/
    image(pared, width/2+40, 0); 
    /*pared de arriba izq*/
    image(pared, 0, 0);
  }
}
