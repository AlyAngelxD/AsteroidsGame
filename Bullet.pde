class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myColor = 80;
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
	}
    public void setX(int x) {myCenterX = (float)x;}  
  	public int getX() {return (int)myCenterX;}  
  	public void setY(int y) {myCenterY = (float)y;}   
	public int getY() {return (int)myCenterY;}   
	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;} 
	public void setDirectionY(double y) {myDirectionY = y;} 
	public double getDirectionY() {return myDirectionY;}   
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection() {return myPointDirection;}
	public void show()
	{
		ellipse((float)myCenterX,(float)myCenterY,10,10);
	}
	public void move ()   //move the floater in the current direction of travel
  	{      
	    //change the x and y coordinates by myDirectionX and myDirectionY       
	    myCenterX += myDirectionX;    
	    myCenterY += myDirectionY;    
  	}   
}