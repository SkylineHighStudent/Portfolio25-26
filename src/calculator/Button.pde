class Button {
  //member variables
  int x, y, w, h, a;
  char val;
  boolean hover, isEllipse;
  color c1, c2;

  //Constructor
  Button(int x, int y, int w, int h, char val, color c1, color c2, boolean isEllipse) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    hover = false;
    this.isEllipse = isEllipse;
    this.c1 = c1;
    this.c2= c2;
  }
  //Member methods
  void display() {
    //rectangle properties
    rectMode(CENTER);
    if(hover == true){
      fill(c2);
    } else {
       fill(c1);
    }
    strokeWeight(0);
    if(isEllipse){
      ellipse(x, y, w, h);
    } else {
      rect(x, y, w, h, 10);
    }

    //text properties
    fill(255);
    textSize(15);
    textAlign(CENTER, CENTER);
    text(val, x, y-3);
  }
  boolean hover(int tempX, int tempY) {
    if (x>tempX-w/2 && x<tempX+w/2 && y>tempY-h/2 && y<tempY+h/2 ) {
      hover = true;
      return true;
    } else {
      hover = false;
      return false;
    }
  }
}
