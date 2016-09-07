class Info {

  void display() {
    //title
    fill(255);
    font = createFont("Courier", 10);
    textFont(font);
    text("Pathway_v1", 10, height-30);

    //header
    fill(255);
    font = createFont("Courier", 10);
    textFont(font);
    text("Before", (width/2)/2, 80);

    textSize(10);
    textFont(font);
    text("After", (width/2)*1.5, 80);

    //graph
    stroke(255);
    strokeWeight(1);
    line(10, height/2, width-10, height/2);

    //End borders + text
    pushMatrix();
    translate(10, height/2+30);
    rotate(radians(90));
    textSize(10);
    fill(255);
    text("18.000 Km", 0, 0);
    popMatrix();
    line(9, height/2-10, 9, height/2+10);

    pushMatrix();
    translate(width-10, height/2+30);
    rotate(radians(90));
    textSize(10);
    fill(255);
    text("18.000 Km", 0, 5);
    popMatrix();
    line(width-9, height/2-10, width-9, height/2+10);
    
    //middle boders
    pushMatrix();
    translate((width/2)/2+9, height/2+30);
    rotate(radians(90));
    textSize(10);
    fill(255);
    text("9.000 Km", 0, 0);
    popMatrix();
    line((width/2)/2+9, height/2-10, (width/2)/2+9, height/2+10);

    pushMatrix();
    translate(width*.75-9, height/2+30);
    rotate(radians(90));
    textSize(10);
    fill(255);
    text("9.000 Km", 0, 5);
    popMatrix();
    line(width*.75-9, height/2-10, width*.75-9, height/2+10);
  }
}