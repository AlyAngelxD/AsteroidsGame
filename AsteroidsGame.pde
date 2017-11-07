Stars[] bg = new Stars[200];
Asteroid[] astBg = new Asteroid[10];
Spaceship spacie = new Spaceship();
boolean moving = false;
public void setup() 
{
	size(500,500);
	for (int i = 0; i < bg.length; i++)
	{
		bg[i] = new Stars(); 
	}
	for (int i = 0; i < astBg.length; i++)
	{
		astBg[i] = new Asteroid();
	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < bg.length; i++)
	{
		bg[i].show();
	}
	for (int i = 0; i < astBg.length; i++)
	{
		astBg[i].show();
		astBg[i].move();
	}
	spacie.show();
	if (moving == true)
		spacie.move();
}
public void keyPressed()
{
	if (key == '2')
	{
		spacie.hyperspace();
		moving = false;
	}
	if (key == '4')
	{
		spacie.turn(-15);
	}
	if (key == '6')
	{
		spacie.turn(15);
	}
	if (key == '5')
	{
		moving = true;
		spacie.accelerate(1);
	}
}
