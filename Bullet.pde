class Bullet extends Floater
{
	public Bullet(SpaceShip theShip)
	{
		myColor = 40;
		myCenterX = spacie.getX();
		myCenterY = spacie.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
	}
	public void show()
	{
		ellipse(myCenterX,myCenterY,2,2);
	}
}