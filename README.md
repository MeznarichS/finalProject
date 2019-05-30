# finalProject

# Project Title and purpose

pixelArt is a collection of pixel art created by the author. createYourOwnPixelArt is a program that allows the user to create their own! It includes a 1000 x 1000 board, divided into 1600 squares. A color pad is present on the right side, and contains pink, red, orange, yellow, light green, dark green, light blue, dark blue, purple, and gray. To chose a color, click on the corresponding block on the color pad. To color in a square, left-click on the square you wish to color. To erase a colored block, right-click on the square. If you right-click again, the square will be colored white.

### Difficulties or opportunities you encountered along the way.

The toughest part was figuring out how to make the mousePressed method work. I didn't know how to separate choosing a color and placing a color, or getting it to fill in a square on the grid. 

My favorite part was learning how to give a left-click and a right-click different actions. It essentially allowed me to create an eraser! 

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the part of my code that fills in a square with the desired color. The method loops through the grid, which is composed of individual rectangles, and checks to see if the coordinates of the mouse (x and y) fit inside a square. The if statement asks if the x and y coordinates are within any given boundary of a square (size: 25 x 25). If the x and y coordinates are within a square, a rectangle in the desired color is placed on top of the "blank" rectangle, giving it the appearence of being "colored in."
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Samantha Meznarich** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
