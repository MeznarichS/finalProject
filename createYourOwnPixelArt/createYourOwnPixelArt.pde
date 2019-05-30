color red = color(237,85,101);
color orange = color(252,110,81);
color yellow = color(255,206,84);
color green = color(160,212,104);
color mint = color(72,207,173);
color lightBlue = color(79,193,233);
color darkBlue = color(93,156,236);
color purple = color(172,146,236);
color pink = color(236,135,192);
color gray = color(204,209,217);


color select;

int x, y;

void setup() {
  size(1200, 1000);
  background(255);
  blankBoard();
  noStroke();
  colors();
}

void draw() {
  selectColor(x, y);
  fillColor(x, y, select);
  
}

void blankBoard() {
  stroke(150);
  for (int i=0; i<=1000; i+=25) {
    for (int j=0; j<=1000; j+=25) {
      rect(i, j, 25, 25);
    }
  }
}

void colors() {
  fill(red);
  rect(1075, 275, 50, 50);
  fill(orange);
  rect(1125, 275, 50, 50);
  fill(yellow);
  rect(1075, 325, 50, 50);
  fill(green);
  rect(1125, 325, 50, 50);
  fill(mint);
  rect(1075, 375, 50, 50);
  fill(lightBlue);
  rect(1125, 375, 50, 50);
  fill(darkBlue);
  rect(1075, 425, 50, 50);
  fill(purple);
  rect(1125, 425, 50, 50);
  fill(pink);
  rect(1075, 475, 50, 50);
  fill(gray);
  rect(1125, 475, 50, 50);
}

public color selectColor(int x, int y) {
  if (x > 1075 && x < 1125) {
    if (y > 275 && y < 325)
      select=red;
    else if (y > 325 && y < 375)
      select=yellow;
    else if (y > 375 && y < 425)
      select=mint;
    else if (y > 425 && y < 475)
      select=darkBlue;
    else if (y > 475 && y < 525)
      select=pink;
  }
  else if (x > 1125 && x < 1175) {
    if (y > 275 && y < 325)
      select=orange;
    else if (y > 325 && y < 375)
      select=green;
    else if (y > 375 && y < 425)
      select=lightBlue;
    else if (y > 425 && y < 475)
      select=purple;
    else if (y > 475 && y < 525)
      select=gray;
  }
  return select;
}

void fillColor(int x, int y, color c) {
  for (int i=0; i<=1000; i+=25) {
    for (int j=0; j<=1000; j+=25) {
      if ((x > i && x < i+25) && (y > j && y < j+25)) {
        fill(c);
        rect(i, j, 25, 25);
      }
    }
  }
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
  select=selectColor(x, y);
  if (mouseButton == LEFT) {
    noStroke();
    fillColor(x, y, select);
  }
  else if (mouseButton == RIGHT) {
    stroke(150);
    select=color(255);
    fillColor(x, y, select);
  }
  
}
