Stars[] bg = new Stars[200];
ArrayList <Asteroid> astBg = new ArrayList <Asteroid> ();
Spaceship spacie = new Spaceship();
boolean moving = false;
ArrayList <Bullet> bulletList = new ArrayList <Bullet> ();
public void setup() 
{
	size(500,500);
	for (int i = 0; i < bg.length; i++)
	{
		bg[i] = new Stars(); 
	}
	for (int i = 0; i < 10; i++)
	{
		astBg.add(new Asteroid());
	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < bg.length; i++)
	{
		bg[i].show();
	}
	for (int i = 0; i < astBg.size(); i++)
	{
		astBg.get(i).show();
		if (dist(astBg.get(i).getX(), astBg.get(i).getY(), spacie.getX(), spacie.getY()) < 15)
			astBg.remove(i);
		else
			astBg.get(i).move();
		for (int j = 0; j < bulletList.size(); j++)
		{
			if (dist(astBg.get(i).getX(), astBg.get(i).getY(), bulletList.get(j).getX(), bulletList.get(j).getY()) < 15)
			{
				astBg.remove(i);
				bulletList.remove(j);
				break;
			}
		}
	}
	for (int i = 0; i < bulletList.size(); i++)
	{
		bulletList.get(i).show();
		bulletList.get(i).move();
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
	if (keyCode == 32)
	{
		bulletList.add(new Bullet(spacie));
	}
}
