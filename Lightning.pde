int startX= 0;
int startY= 150;
int endX= 0;
int endY= 150;
void setup()
{

 	size(300,300);
}
void draw()
{

	stroke((int)(Math.random()*255));
	line(0,150,300,150);
}
void mousePressed()
{
	while (x < 300){
		endX = startX + (int)(Math.random()*9);
		endX = startX + (int)(Math.random()*9);
		line(startX,startY,endX,endY);
	}

}

