//load
import java.util.Map;
PFont font;

//screen
int screenWidth = 1260;
int posCiidX = screenWidth/2;
float graphReach = 18700;
float scaleAdjust = 10;
float posBX;
float posBY;

//colorData
boolean overStudent = false;
boolean locked = false;

//table
Table table;
int rowCount = 8;
int studentCount = 0;

//button
int year;

//class
Ciid ciid;
Info info;
Buttons buttons;

//HashMap
HashMap<String, Student> stName = new HashMap<String, Student>();

void settings() {
  //fullScreen();
  size(screenWidth, 700);
}

void setup() {
  ciid = new Ciid();
  info = new Info();
  buttons = new Buttons();

  background(0);
  smooth();
  parseData();
}

void mousePressed() {
  buttons.mousePressed();
  
}
void mouseReleased() {
  buttons.mouseReleased();
  
}

void draw() {
  background(0);
  smooth();
  info.display();
  //triangle
  buttons.display(width/2-15, height-50, width/2+15, height-50, width/2, height-75);

  //Mapping
  for (Map.Entry<String, Student> me : stName.entrySet()) {
    Student st = me.getValue();
    st.displayBefore(posCiidX - (st.distanceBefore*posCiidX) - scaleAdjust, height/2, 9, 9, st.studentName, st.pointA, st.distanceBeforeD);
    st.displayAfter((st.distanceAfter*posCiidX) + posCiidX + scaleAdjust, height/2, 9, 9, st.studentName, st.pointC, st.distanceBeforeD);    
    st.mouseMoved();
  }
  
  ciid.display();
}

void parseData() {
  table = loadTable("CopyCityDistancesCalculator.csv", "header");
  rowCount = table.getRowCount();

  for (int i = 0; i < 109; i++) {
    Student student;

    TableRow studentRow = table.getRow(i);
    String studentName = studentRow.getString("Name");
    //int year = studentRow.getInt("Year");
    String pointA = studentRow.getString("Point A");
    String pointC = studentRow.getString("Point C");
    String distanceBeforeD = studentRow.getString("Distance_Before");
    String distanceAfterD = studentRow.getString("Distance_After");
    
    //Create students
    student = new Student();

    student.studentName = studentName;   
    student.pointA = pointA;
    student.pointC = pointC;
    student.distanceBeforeD = distanceBeforeD;
    student.distanceAfterD = distanceAfterD;
    student.distanceBefore = studentRow.getInt("Distance_Before") / graphReach;
    student.distanceAfter = studentRow.getInt("Distance_After") / graphReach;

    //buttons.year = year;
    //buttons.year = studentRow.getInt("Year");

    studentCount++;

    stName.put(studentName, student);
    stName.put(pointA, student);
    stName.put(pointC, student);
    stName.put(distanceBeforeD, student);
    stName.put(distanceAfterD, student);
    //println(buttons.year);
  }
}



/*void drawStream() {
 noFill();
 strokeWeight(0.8);
 stroke(0, 255, 0);
 curve(500, 400, width/2, height/2, width/2+200, height/2, 600, 500);
 stroke(0, 0, 255);
 curve(550, 400, width/2, height/2, width/2+300, height/2, 600, 900);
 }*/