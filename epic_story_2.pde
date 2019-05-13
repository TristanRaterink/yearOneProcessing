// Epic Story 2
// Tristan Raterink
// EKT1D

//Als je deze sketch afspeelt als eerste de linkermuisknop indrukken.
//Als je spatie indrukt zal de sneeuwbal gaan rollen, zodra die het scherm verlaat 
//en opnieuw vanaf links het scherm weer inkomt, komt er een punt bij


sneeuwpop s;
Drop [] drops = new Drop[500];
Sun n;
int x;
boolean ball = false;
int y;

int diameter = 200;
int size = 200;

color activeColorCircle;
int score = 0;


void setup() {
  size(1720, 980);
  s = new sneeuwpop(mouseX, mouseY);
  n = new Sun(0, 200);
  

  for (int i = 0; i< drops.length; i++) {
    drops[i] = new Drop(random(width), -400);
  }



}

void draw() {
  background(0);

  fill(#194313);
  rect(0, 700, width, 400);

  fill(255);
  textSize(80);
  text(score, 50, 100);
  if (score > 10) {
    score = 0;
  }

  fill(255);
  ellipse(x, 800, 100, 100);
  if (ball) {
    x = x + 5;
  }
  if (x>width) {
    x = 0;
    score++;
  }

  n.moveZ();
  s.display(mouseX);
  n.zon();



  fill(#A76736);
  rect(200, 500, 600, 600);

  fill(#D30606);
  triangle(500, 100, 200, 500, 800, 500);

  fill(0);
  rect(600, 780, 100, 200);

  fill(color(random(100, 255),0,random(100,255)));
  rect(300, 600, 150, 150);

  for (int i = 0; i< drops.length; i++) {
    drops[i].show();
    drops[i].fall();
  }
}
void keyPressed() {
  ball = !ball;
}