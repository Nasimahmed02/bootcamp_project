Stickman stickman;
PImage uImg;
PImage tImg;
ArrayList<Killer> killer = new ArrayList<Killer>();


void mousePressed() {
  killer.add(new Killer());
}

void setup() {
  size(800, 450);
  uImg = loadImage("stickman.png");
  tImg = loadImage("killer.png");
  stickman = new Stickman();
}


void keyPressed() {
  if (key == ' ') {
    stickman.jump();
  }
}

void draw() {

  if (random(1) < 0.005) {
    killer.add(new Killer());
  }

  background(255);
  for (Killer k : killer) {
    k.move();
    k.show();
    if (stickman.hits(k)) {
      print("!!!GAME OVER!!!");
      noLoop();
    }
  }

  stickman.show();
  stickman.move();
}
