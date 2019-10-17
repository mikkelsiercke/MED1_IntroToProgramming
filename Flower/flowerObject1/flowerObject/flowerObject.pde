Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;
Flower[] myFlowers;
Flower myCar1;

void setup() {
  size(900, 800);

  float x = width/2;
  float y = height/2;
  int pc = #FFA000;
  int carColor = #E312FF;
  int hitColor = #AA19FA;                      

  myFlower1 = new Flower(30, 7, x, y, pc, 2, 2, hitColor);
  myFlower2 = new Flower(50, 6, x, y, #EF00F0, 2.3, 2.1, #FA19C2);
  myFlower3 = new Flower(20, 7, 200, 300, #0AF776, 2, 2, #FA6419);
  myCar1 = new Flower(x, y, 4, carColor, 2, 2);

  myFlowers = new Flower[0];

  for (int i = 0; i < myFlowers.length; i++) {
    int rad = int(random(5, 60));
    int petals = int(random(5, 20));
    float xspeed = random(2.5, 4.5);
    float yspeed = random(2.5, 4.5);
    myFlowers[i] = new Flower(rad, petals, x, y, pc, xspeed, yspeed, hitColor);
  }
}

void draw() {
  background(#EEFAE1);

  for (int i = 0; i < myFlowers.length; i++) {
    myFlowers[i].displayFlower();
    myFlowers[i].move();
    myFlowers[i].bounce();
    myFlowers[i].flowerHit(myFlowers[i]);
  }

  myCar1.displayCar();
  myCar1.move();
  myCar1.bounce();

  myFlower1.displayFlower();
  myFlower1.move();
  myFlower1.bounce();
  myFlower2.displayFlower();
  myFlower2.move();
  myFlower2.bounce();
  myFlower3.displayFlower();
  myFlower3.move();
  myFlower3.followMouse();

  myFlower1.flowerHit(myFlower2);
  myFlower2.flowerHit(myFlower1);
  myFlower3.flowerHit(myFlower1);
  myFlower3.flowerHit(myFlower2);
}
