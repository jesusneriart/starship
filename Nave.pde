class Nave{
  PImage img;
 
  int vel;
  
  int naveX;
  int naveY;
  
  PImage ataque;
  
  Nave(PImage timg, int tvel, int tnaveX,int tnaveY){
    img = timg;
    vel = tvel;
    naveX = tnaveX;
    naveY = tnaveY;
  }
  
  void aparecer(){
    image(img,naveX,naveY,100,100);
  }
  
  void mover(){
    if (naveX <= displayWidth-100){
    
      if ( key == 'd' ) {
        key = '0';
        naveX = naveX + nave.vel;
        
      }
    }
    
    
    if (naveY <= displayHeight-100){
    
    if ( key == 's' ) {
      key = '0';
      naveY = naveY + nave.vel;
      
    }
  }
  
  if (naveY >= 0){
    
    if ( key == 'w' ) {
      key = '0';
      naveY = naveY - nave.vel;
      
    }
  }
  
  
  
  if (naveX >= 0){
    
    if ( key == 'a' ) {
      key = '0';
      naveX = naveX - nave.vel;
    }
  }
  }
  
  void atack(){
    image(img,naveX,naveY,100,100);
  }

  
  
  
  
}
