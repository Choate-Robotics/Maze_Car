Car myCar;
DriveSystem drive;
Maze m;

void setup(){
  size(640,640);
  m = new Maze("data/maze1.json");
  myCar=new Car(100, 40, PI/2+.1);
  drive=new MyDriveSystem(myCar);
  //drive=new DriveSystem(myCar);
}

void draw(){
  background(0);
  // Draw obstacles before the car so that the sensors can work correctly.
  //drawPath();
  m.show();
  myCar.show();
  drive.drive();
  myCar.move();
}

void drawPath(){
  strokeWeight(7);
  stroke(255);
  line(50,50,width-80,50);
  line(width-80,50,width-80,height-60);
  line(width-80,height-60, 50,height-60);
  line(50,height-60, 50,50);
  //line(300,0,300,height);
  strokeWeight(0);
}
