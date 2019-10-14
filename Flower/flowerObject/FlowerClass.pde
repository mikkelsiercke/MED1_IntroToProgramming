class Flower {
  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals

  int xdirection = 1;
  int ydirection = 1;

  float xspeed = 1; 
  float yspeed = 1;

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
  } 

  void display () {
    bounce();
    move();

    float ballX;
    float ballY;

    fill(petalColor);
    for (float i = 0; i < PI * 2; i += 2 * PI / n_petals) {
      ballX = x + r*cos(i);
      ballY = y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r * 1.2, r * 1.2);
  }

  //https://processing.org/examples/bounce.html  
  void move() {
    x = x + (xspeed * xdirection);
    y = y + (yspeed * ydirection);
  }

  void bounce() {
    if (x > width-r || x < r) {
      xdirection *= -1;
    }
    if (y > height-r || y < r) {
      ydirection *= -1;
    }
  }

  void setSpeed(float xspeed, float yspeed) {
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }
  
  float getXspeed() {
   return this.xspeed; 
  }
}
