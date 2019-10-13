Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(900, 800);

  int _r1 = 20;
  int _petals = 5;
  float _x = width/2;
  float _y = height/2;
  int _pc = #FFA000;
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc);
  myFlower2 = new Flower(50, 6, _x, _y, _pc);
  myFlower3 = new Flower(70, 10, 200, 300, _pc);
}

void draw() {
  background(#EEFAE1);

  myFlower1.display();
  myFlower1.setSpeed(2.1, 3.2);
  myFlower2.display();
  myFlower2.setSpeed(3.2, 3.4);
  myFlower3.display();
  myFlower3.setSpeed(4.2, 3.4);
}
