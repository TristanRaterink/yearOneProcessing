class Sun {
  float y;
  float x;
  float xspeed = 1;

  Sun(float px, float py) {
    x = px;
    y = py;
  }


  void zon() {
    fill(#FAFF08);
    noStroke();
    ellipse(x, y, 180, 180);
    x = x + xspeed;
  }

  void moveZ() {
    float xspeed = 1;
    x = x + xspeed;

    if ( x > width + 180) {
      x = -180;
    }
  }
}