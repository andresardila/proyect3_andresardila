int j,i;
// mouse, by lmcapacho
import processing.serial.*;

Maze maze;

// El puerto serial
//Serial myPort;

void setup() {

  // Tamaño de la ventana
  size(400, 400);

  // Tamaño fuente
  textSize(20);
  // Color de fondo de la ventana 
  background(51);
  // Alineación del texto
  textAlign(CENTER, CENTER);

  // Crea una nueva cuadrícula de 6 x 6   
  maze = new Maze(6);

  // Abre el puerto serial con velocidad de 9600 baudios
  //myPort = new Serial(this, "/dev/ttyUSB1", 9600);
  //myPort.clear();
  
  // Ejemplo: Coloca pared en norte y este de la celda 2,2 (columna fila)
  maze.setWalls(2,1, Maze.WEST );
  maze.setWalls(1,2, Maze.EAST | Maze.SOUTH | Maze.WEST);
  maze.setWalls(0,0, Maze.SOUTH | Maze.NORTH | Maze.WEST);
  maze.setWalls(2,0, Maze.SOUTH | Maze.EAST | Maze.NORTH );
  maze.setWalls(1,3, Maze.SOUTH);
  maze.setWalls(2,3, Maze.SOUTH);
  maze.setWalls(3,5, Maze.SOUTH | Maze.EAST | Maze.NORTH);
  maze.setWalls(0,5, Maze.SOUTH | Maze.WEST | Maze.NORTH );
  maze.setWalls(1,5, Maze.SOUTH | Maze.NORTH );
  maze.setWalls(4,5, Maze.SOUTH | Maze.WEST);
  maze.setWalls(2,4, Maze.EAST);
  maze.setWalls(5,5, Maze.SOUTH | Maze.WEST | Maze.EAST );
  maze.setWalls(5,4, Maze.WEST | Maze.EAST );
  maze.setWalls(5,3, Maze.WEST | Maze.EAST );
  maze.setWalls(5,2, Maze.NORTH | Maze.EAST );
  maze.setWalls(4,2, Maze.NORTH | Maze.WEST );
  maze.setWalls(4,3, Maze.WEST | Maze.EAST );
  maze.setWalls(5,0, Maze.SOUTH | Maze.NORTH | Maze.EAST);
  maze.setWalls(4,0, Maze.SOUTH | Maze.NORTH);
  maze.setWalls(3,1, Maze.SOUTH);
    for(i=0;i<6;i++)
  {
    for(j=0;j<6;j++)
  {
    maze.setMouse(j,i);
    maze.display();
    delay(100);
  }
  }
}

void draw() { 
  //maze.display();
  
  /*while (myPort.available() > 0) {
    byte[] inBuffer = new byte[11];
    if( myPort.readBytesUntil('\n', inBuffer) > 0){
      String myString = new String(inBuffer);
      print(int(myString.substring(0,3)));
      print(int(myString.substring(3,6)));
      println(int(myString.substring(6,9)));
    }  
  }*/
}