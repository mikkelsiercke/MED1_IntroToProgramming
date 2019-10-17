class Flower {
  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  int hitColor;

  int carColor;

  int size;

  int xdirection = 1;
  int ydirection = 1;

  float xspeed, yspeed;

  float easing = 0.05;
  
  boolean hit = false;

  Flower(float r, int n_petals, float x, float y, int petalColor, float xspeed, float yspeed, 
    int hitColor) {
    this.r = r;
    this.n_petals = n_petals;
    this.x = x;
    this.y = y;
    this.petalColor = petalColor;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    this.hitColor = hitColor;
  } 

  Flower(float x, float y, int size, int carColor, float xspeed, float yspeed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.carColor = carColor;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }

  void displayFlower() {
    stroke(1);
    float ballX;
    float ballY;

    if (hit) {
      fill(hitColor);
    } else {
      fill(petalColor);
    }
    
    for (float i = 0; i < PI * 2; i += 2 * PI / n_petals) {
      ballX = x + r*cos(i);
      ballY = y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    
    fill(200, 0, 0);
    ellipse(x, y, r * 1.2, r * 1.2);
  }

  void displayCar() {
    float car1x = x + 5 * size;
    float car1y = y;
    noStroke();
    fill(carColor);
    rect(car1x, car1y, 20 * size, 10 * size);
    rect(x, y + 7 * size, 30 * size, 5 * size);
    fill(0);
    ellipse(x + 5 * size, y + 12 * size, 5 * size, 5 * size);
    ellipse(x + 25 * size, y + 12 * size, 5 * size, 5 * size);
  }

  void flowerHit(Flower flower) {
    if (dist(flower.x, flower.y, x, y) < r * 2) {      
      hit = true;
    } else {
      hit = false;
    }
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

  //https://processing.org/examples/easing.html
  void followMouse() {
    float targetX = mouseX;
    float dx = targetX - x;
    x += dx * easing;

    float targetY = mouseY;
    float dy = targetY - y;
    y += dy * easing;
  }
}
