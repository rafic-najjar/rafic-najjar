//hello my name is rafic
/*
 Small program for week 4 of COMP1050
 A agent moving around.
 Use it to practice merge conflicts.
 */

float x;
float y;
float xTarget;
float yTarget;
float dx = 0;
float dy = 0;
//Change the agent color here
color agentColor = color(200, 200, 50);

void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  xTarget = x;
  yTarget = y;
}

void draw() {
  //Change the back ground color here
  background(255);

  // Compute direction towards target
  dx = constrain(xTarget - x, -2, 2);
  dy = constrain(yTarget - y, -2, 2);

  // Move towards target
  x = x + dx;
  y = y + dy;

  // Draw the agent
  noStroke();
  fill(agentColor);
  ellipse(x, y, 50, 50);
  
  //Change the mouth color here
  stroke(0, 0, 250);
  strokeWeight(3);
  arc(x,y,25, 25, 0, PI);
  //Add the eyes after this line
}

void mousePressed() {
  if (dist(x,y,mouseX,mouseY)<50) {  // mouseY is over the agent
    //Change the agent color here
    agentColor = color(200, 0, 0);
  } else {
    xTarget = mouseX; // set the target
    yTarget = mouseY;
  }
}

void mouseReleased() {
  //Change the agent color here
  agentColor=color(200, 200, 50);
}
