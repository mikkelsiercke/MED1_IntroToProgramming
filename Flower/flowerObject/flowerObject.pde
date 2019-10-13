Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(900, 800);
  
  int _r1 = 20;
  int _petals = 10;
  float _x = width/2;
  float _y = height/2;
  int _pc = #FFA000;
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc);
  myFlower2 = new Flower(50, 6, _x, _y, _pc);
}

void draw() {
  background(#EEFAE1);

  myFlower1.display();
  myFlower1.move(2.1, 3.2);
  myFlower2.display();
  myFlower2.move(3.2, 3.4);
}
