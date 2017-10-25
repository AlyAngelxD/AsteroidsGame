Spaceship spacie = new Spaceship();
public void setup() 
{
	size(500,500);
}
public void draw() 
{
	background(0);
	spacie.show();
}
public void keyPressed()
{
	if (key == 'h')
	{
		spacie.hyperspace();
	}
}
