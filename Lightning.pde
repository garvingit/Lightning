int startX= mouseX;
int startY= mouseY;
int endX= mouseX;
int endY= mouseY;
int subNumX = -18;
void setup()
{
	frameRate(50);
	size(600,600);
	noStroke();
	fill(205,92,92);
	rect(0,300,600,300);
	fill(100,149,237);
	rect(0,0,600,300);
}
void draw()
{
	//background(0);
	
	strokeWeight((float)(Math.random()*5));
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));

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
	
	
	// if statement so that the lightning doesnt leave the screenX
	if (startX < 0){
		subNumX = 18;
	}
	else if (startX > 600){
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


