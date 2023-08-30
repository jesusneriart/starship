Estrella sol, sol2, sol3,sol5;

Estrella[]estrellas = new Estrella[1000];

Nave nave;

//crear clase nave
PImage sprite;

PImage laser;





void setup(){
  fullScreen();
  
  //size(600,600);
  
  sol = new Estrella(50,#DEE30B);
  sol2 = new Estrella(100,#4097f2);
  sol3 = new Estrella(70,#13F02E);
  
  sol5 = new Estrella(300,#DEE30B);
  
  for (int i = 0; i < 1000; i = i+1) {
    estrellas[i] = new Estrella(random(0,25),color(random(0,255), random(0,255), random(0,255)));   
  }
 
  //cargar imagen de nave
  sprite = loadImage("nave.png");
  
  laser = loadImage("laser.png");
  
  nave = new Nave(sprite, 40,50,50);
  
  
}

void draw(){    
  background(0);
  
  nave.mover();
  nave.aparecer();
  
  for (int i = 0; i < 1000; i = i+1) {
    estrellas[i].nacer();  
    estrellas[i].brillo(); 

    //si es verdadero significa que nuestro mouse se encuentra dentro de la estrella y devuelve un true la funcion
    if(estrellas[i].mouseIn()){
      print("MOUSE EN ESTRELLA NO. " + i);
      textSize(30);
      text("MOUSE EN ESTRELLA NO. " + i, displayWidth/2, displayHeight/2); 
      textAlign(CENTER, CENTER);
    }
    
    
   
  
  
    

  }
  
  
  //sol.nacer();
  //sol.brillo();
  //sol2.nacer();
  //sol2.brillo();
  //sol3.nacer();
  
  
  //sol5.nacer();


}

void keyPressed()
{
  
  
  
}
