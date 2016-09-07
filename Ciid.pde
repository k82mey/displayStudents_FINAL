class Ciid {
  int posCiidX = screenWidth/2;
  int posCiidY = height/2;

  //image
  PImage CiidLogo;

  void display() {
    //CiidLogo = loadImage("CiidLogo.png");
    //image(CiidLogo, posCiidX-24, posCiidY-40);
    //noStroke();
    //fill(255, 0, 58);
    stroke(255);
    strokeWeight(.5);
    //fill(0);
    triangle(width/2-10, height/2-10, width/2+10, height/2-10, width/2, height/2+10);
    
    pushMatrix();
    translate(width/2-3, height/2+30);
    rotate(radians(90));
    font = createFont("Courier", 10);
    textFont(font);
    fill(255);
    text("CIID", 0, 0);
    popMatrix();
    //ellipse(posCiidX, posCiidY, 15, 15);
  }
}