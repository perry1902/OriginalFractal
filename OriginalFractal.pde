public void setup()
{
	background(0);
	size(800,600);
}
public void draw()
{
	fill(245,160,57);
	fractal(50,300,200);
}
public void fractal(int x, int y, int len)
{
	if (len <=20)
		quad(x,y,x+len,y+len,x+(2*len),y,x+len,y-len);
	else 
 	{
 		fractal(x+(len/2),y+(len/2),len/2);
 		fractal(x+(len/2),y-(len/2),len/2);
		fractal(x,y,len/2);
		fractal(x+(2*len),y,len/2);
		fractal(x+len/2,y,len/2);
	
		
	}
}


