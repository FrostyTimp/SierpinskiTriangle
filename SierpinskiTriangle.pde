public void setup()
{
	size(800,800);
	background(0);
}
void draw()
{
	sierpinski(100,700,600);
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
	{	
		stroke(0);
		fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else
	{
		fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
		sierpinski(x,y,len/2);
		sierpinski(x+(len*1/2),y,len/2);
		sierpinski(x+(len*1/4),y-(len*1/2),len/2);  
	}
}