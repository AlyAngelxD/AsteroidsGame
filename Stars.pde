class Stars //note that this class does NOT extend Floater
{
	private int myColor; 
	private double myX, myY;
	public Stars() 
	{
		myX = (float)Math.random()*500;
		myY = (float)Math.random()*500;
		myColor = 200;
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,1,1);
	}                                           
}
