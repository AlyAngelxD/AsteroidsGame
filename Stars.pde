class Stars //note that this class does NOT extend Floater
{
	private int myX, myY, myColor;
	Stars() 
	{
		myX = (int)Math.random()*500;
		myY = (int)Math.random()*500;
		myColor = 200;
	}
	public void show()
	{
		fill(myColor);
		ellipse(myX,myY,1,1);
	}
}
