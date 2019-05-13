class sneeuwpop {

  float x;
  float y;


  sneeuwpop(float px, float py) {
    x = px;
    y = py;
  }

    void display( int xmuis) {
    
    pushMatrix();
    translate(xmuis, 0);
    noStroke();
    fill(255);
    ellipse(0, 890, 150, 150);

    noStroke();
    fill(255);
    ellipse(0, 790, 130, 130);

    noStroke();
    fill(255);
    ellipse(0, 690, 110, 110);

    stroke(0);
    fill(0);
    ellipse(15, 670, 20, 20);

    stroke(0);
    fill(0);
    ellipse(-15, 670, 20, 20);

    fill(#FF801F);
    triangle(-5, 690, 5, 690, 0,720 );
    popMatrix();
  }
}