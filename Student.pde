class Student {

  float posBX;
  float posBY;
  float posAX;
  float posAY;

  float cpx1;
  float cpy1;
  float cpx2;
  float cpy2;
  float cpx3;
  float cpy3;
  float cpx4;
  float cpy4;

  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  color c = color(r, g, b);

  String studentName;
  String pointA;
  String pointC;
  String distanceBeforeD;
  String distanceAfterD;

  float studentWidth;
  float studentHeight;

  float distanceBefore;
  float distanceAfter;

  float z = random(80, 170);
  float a = random(height/2+80, height-120);
  float s = random(height/2+80, height-120);
  float transWidthB = random(0, width/2);
  float transWidthA = random(width/2, width);
  float transHeight = random(100, 600);

  void displayBefore
    (float posX_, float posY_, float studentWidth_, float studentHeight_, 
    String studentName_, String pointA_, String distanceBeforeD_) {
    posBX = posX_;
    posBY = posY_;
    studentWidth = studentWidth_;
    studentHeight = studentHeight_;
    studentName = studentName_;
    pointA = pointA_;
    distanceBeforeD = distanceBeforeD_;


    noFill();
    stroke(255);
    strokeWeight(0.5);
    //fill(c);
    //noStroke();
    ellipse(posBX, posBY, studentWidth, studentHeight);
  }

  void displayAfter
    (float posX_, float posY_, float studentWidth_, float studentHeight_, 
    String studentName_, String pointC_, String distanceAfterD_) {
    posAX = posX_;
    posAY = posY_;
    studentWidth = studentWidth_;
    studentHeight = studentHeight_;
    studentName = studentName_;
    pointC = pointC_;
    distanceAfterD = distanceAfterD_;

    noFill();
    stroke(255);
    strokeWeight(0.5);
    ellipse(posAX, posAY, studentWidth, studentHeight);
  }

  void mouseMoved() {
    // Test if the cursor is over the student 
    if (mouseX >= posBX-studentWidth && mouseX <= posBX+studentWidth && mouseY <= height/2) {
      overStudent = true;  
      if (!locked) {        
        pushMatrix();
        //curve before
        noFill();
        stroke(c);
        strokeWeight(.5);
        cpx1 = 600;
        cpy1 = 1000;
        cpx2 = 800;
        cpy2 = 3000;
        curve(cpx1, cpy1, screenWidth/2, posBY, posBX, posBY, cpx2, cpy2);

        //student name text
        //translate(posBX, posBY);
        translate(transWidthB, transHeight);
        rotate(radians(90));
        textSize(10);
        fill(c);
        text(studentName, 20, 0);
        popMatrix();

        //pointA
        //for (int z = 80; z < 140; z = z+10) {
        textSize(8);
        fill(255);
        text(pointA, width/2, z);
        //}
        //Distance Before
        textSize(8);
        fill(255);
        text(distanceBeforeD, width/2, a);
      } else {     
        overStudent = false;
      }
    }

    if (mouseX >= posAX-studentWidth && mouseX <= posAX+studentWidth && mouseY <= height/2) { 
      overStudent = true;  
      if (!locked) {
        pushMatrix();
        //curve after
        noFill();
        stroke(c);
        strokeWeight(.5);
        cpx3 = 600;
        cpy3 = 1000;
        cpx4 = 800;
        cpy4 = 3000;
        curve(cpx3, cpy3, screenWidth/2, posAY, posAX, posAY, cpx4, cpy4);

        //student name text
        //translate(posAX, posAY);
        translate(transWidthA, transHeight);
        rotate(radians(90));
        textSize(10);
        fill(c);
        text(studentName, 20, 0);
        popMatrix();

        //pointC
        //for (int z = 80; z < 140; z = z+10) {
        textSize(8);
        fill(255);
        text(pointC, width/2, z);
        //}
        //Distance After
        textSize(8);
        fill(255);
        text(distanceAfterD, width/2, s);
      } else {     
        overStudent = false;
      }
      //println(studentName + " -B- " + posBX + " -A- " + posAX + " -- " + mouseX);
    }
  }
}