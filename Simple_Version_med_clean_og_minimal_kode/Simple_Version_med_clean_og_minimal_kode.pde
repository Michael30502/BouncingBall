//Opsætter start variabler
float xBall = 250, yBall= 250, ballExtent = 50;
float xBaseSpeed = 11, yBaseSpeed = 10, xSpeed = xBaseSpeed, ySpeed= yBaseSpeed;
float rectPosX = 5, rectPosY = 5;
float rectWidth=500, rectHeight=500;
void setup() {
  size(500, 500);
}

void draw() {

  //Collision detection mellem bolden og rektanglen
  xBall += xSpeed;
  yBall += ySpeed;
  if (xBall+35>=(rectPosX+rectWidth))
    xSpeed = -xBaseSpeed;
  if (xBall-35<= rectPosX)
    xSpeed = xBaseSpeed;
  if (yBall+35>=(rectPosY+rectHeight))
    ySpeed = -yBaseSpeed;
  if (yBall-35<= rectPosY)
    ySpeed = yBaseSpeed; 
  //Formindsker rektanglen
  rectWidth -= 1;
  rectPosX += 0.5;
  rectPosY += 0.5;
  rectHeight -= 1;
  //tegner of farver en rektangel og en bold
  clear();
  stroke(255, 255, 255);
  noFill();

  rect(rectPosX, rectPosY, rectWidth, rectHeight);
  fill(255, 255, 255);
  circle(xBall, yBall, ballExtent);
}
