int startX= mouseX;
int startY= mouseY;
int endX= mouseX;
int endY= mouseY;
void setup()
{
	frameRate(50);
	size(600,600);
}
void draw()
{
	background(0);
	strokeWeight((float)(Math.random()*5));
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	/*if (endX < 600){
		endX = startX + (int)(Math.random()*18);
		endY = startY + (int)(Math.random()*36*2)-(18*2);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	*/
	if (mouseY < 300){
		endY = startY + (int)(Math.random()*18);
		endX = startX + (int)(Math.random()*36*2)-(18*2);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	else {
		endY = startY + (int)(Math.random()*18)-36;
		endX = startX + (int)(Math.random()*36*2)-(18*2);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;


	}

}
void mousePressed()
{
		startX= mouseX;
		startY = mouseY;
		endX= mouseX;
		startY= mouseY;
}

