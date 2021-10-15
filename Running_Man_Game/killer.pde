class Killer {
  int r;
  float x, y;
  Killer() {
    this.r = 75;
    this.x = width;
    this.y = height - this.r;
  }

  void move() {
    this.x -= 16;
  }

  void show() {
    image(tImg, this.x, this.y, this.r, this.r);
  }
}
