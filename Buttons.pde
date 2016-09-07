class Buttons {

  //triangle
  float bx1;
  float by1;
  float bx2;
  float by2;
  float bx3;
  float by3;
  
  //button box
  float bx;
  float by;
  int boxSize = 30;
  boolean overBox = false;
  boolean locked = false;

  //int year;

  void display(int bx1_, int by1_, int bx2_, int by2_, int bx3_, int by3_) {
    bx1 = bx1_;
    by1 = by1_;
    bx2 = bx2_;
    by2 = by2_;
    bx3 = bx3_;
    by3 = by3_;

    //year = year_;
    stroke(255);
    strokeWeight(0.5);
    noFill();

    if (locked) { 
      noStroke();
      fill(255, 0, 58);
    }
    triangle(bx1, by1, bx2, by2, bx3, by3);
    ;
  }

  void mousePressed() {
    if (mouseX > bx1-boxSize && mouseX < bx1+boxSize &&
      mouseY > by1-boxSize && mouseY < by1+boxSize &&
      mouseX > bx2-boxSize && mouseX < bx2+boxSize &&
      mouseY > by2-boxSize && mouseY < by2+boxSize &&
      mouseX > bx3-boxSize && mouseX < bx3+boxSize &&
      mouseY > by3-boxSize && mouseY < by3+boxSize) { 
      locked = true; 
      noStroke();
      fill(255, 0, 58);
      triangle(bx1, by1, bx2, by2, bx3, by3);
    } else {
      stroke(255);
      strokeWeight(0.5);
      noFill();
    }
  }
  void mouseReleased() {
    locked = false;
  }
}