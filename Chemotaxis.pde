Duck[] bob;
Person man;
void setup() {
  size(500, 500);
  frameRate(60);
  bob = new Duck[25];
  man = new Person();
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Duck();
  }
}
void draw() {
  background(255);
  for (int i = 0; i < bob.length; i++) {
    man.run();
    man.show();
    bob[i].move();
    bob[i].show();
    if (get(mouseX, mouseY) != color(255)) {
      textSize(100);
      text("Dead", 100, 250);
      exit();
    }
  }
}

class Duck {
  int myX, myY, myColor;
  Duck() {
    myX = 25;
    myY = 25;
    myColor = color((int)(Math.random()*257), (int)(Math.random()*257), (int)(Math.random()*257));
  }
  void move() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*7);
    } else {
      myX = myX + (int)((Math.random()*7)-6);
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*7);
    } else {
      myY = myY + (int)((Math.random()*7)-6);
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 20, 10);
    ellipse(myX+5, myY-5, 10, 10);
    triangle(myX+10, myY-4, myX+15, myY-4, myX+10, myY-7);
    fill(0);
    ellipse(myX+7, myY-7, 3, 3);
  }
}

class Person {
  int myX, myY;
  Person() {
    myX = 250;
    myY = 250;
  }
  void run() {
    myX = mouseX;
    myY = mouseY;
  }
  void show() {
    fill(255);
    ellipse(myX, myY, 20, 20);
    line(myX, myY+10, myX, myY+25);
    line(myX, myY+25, myX-10, myY+40);
    line(myX, myY+25, myX+10, myY+40);
    line(myX, myY+15, myX-15, myY+12);
    line(myX, myY+15, myX+15, myY+12);
  }
}
