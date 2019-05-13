class Drop {

  Drop(float px, float py) {
    x = px;
    y = py;
  }




  float x= random (width);
  float y= random(-500, -50);
  float yspeed = random(1, 20);
  float len = random(5, 20);
  float ver = random(1, 20);
  float leng = random(1, 20);

  void fall() {
    y = y + yspeed;
    yspeed = yspeed + 0.05;
    if (y > height) { 
      y = random(-200, -100);
      yspeed = random(5, 20);
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, ver, leng+len);
  }
}