public void setup()
{
	size(1000,1000);
	rectMode(CENTER);
}
public void draw()
{
	background(255);
	fill(100,0,100);
	myFractal(500,500,500);
}
public void myFractal(int x, int y, int siz)
{
	rect(x,y,siz,siz);

	if(siz>10)
	{
		myFractal(x-siz/2,y,siz/2);
		myFractal(x+siz/2,y,siz/2);
		myFractal(x,y+siz/2,siz/2);
		myFractal(x,y-siz/2,siz/2);
		myFractal(x,y,siz/2);
		myFractal(x,x,siz/2);
		myFractal(x,1000-x,siz/2);
	}
}