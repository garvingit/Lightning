int startX= mouseX;
int startY= mouseY;
int endX= mouseX;
int endY= mouseY;
int subNumX = -18;
void setup()
{
	frameRate(50);
	size(600,600);
}
void draw()
{
	//background(0);
	strokeWeight((float)(Math.random()*5));
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	//Starting code might not be useful
	/*if (endX < 600){
		endX = startX + (int)(Math.random()*18);
		endY = startY + (int)(Math.random()*36*2)-(18*2);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	*/
	//useful code moved to keypressed
	/*
	if (mouseY < 300){
		endY = startY + (int)(Math.random()*18);
		endX = startX + (int)(Math.random()*36)+subNumX;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	else {
		endY = startY + (int)(Math.random()*18)-36;
		endX = startX + (int)(Math.random()*36)+subNumX;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;

	}
	*/
	
	// if statement so that the lightning doesnt leave the screenX
	if (startX < 50){
		subNumX = 18;
	}
	else if (startX > 550){
		subNumX = -18;
	}

}
void mousePressed()
{
		startX= mouseX;
		startY = mouseY;
		endX= mouseX;
		startY= mouseY;
}

void keyPressed(){
	if (key == CODED) {
 
	if (keyCode == DOWN){
		endY = startY + (int)(Math.random()*18);
		endX = startX + (int)(Math.random()*36)+subNumX;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	else if (keyCode == UP) {
		endY = startY + (int)(Math.random()*18)-36;
		endX = startX + (int)(Math.random()*36)+subNumX;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}

	}
}

