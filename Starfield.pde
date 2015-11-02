Particle[]field;//your code here
public void setup()
{
	size(500, 500);
	//background(0,0,0);
	int addP = 0;
	
	field = new Particle[10000 + addP];
	for(int p = 0; p < field.length; p++)
	{
		field[p] = new NormalParticle();
	}//your code here
}
public void draw()
{
	noStroke();
	fill(0, 0, 0, 20);
	rect(0, 0, 500, 500);
	for(int p = 0; p < field.length; p++)
	{
		field[p].show();
		field[p].move();
	}//your code here
}
class NormalParticle implements Particle
{
	float xPos, yPos, pSize, speed;
	double  angle;
	int pColor;
	NormalParticle()
	{
		pSize = 0.5+ (float)(Math.sin(angle)*speed);;
		xPos = (float)(Math.random()*500);
		yPos = (float)(Math.random()*500);
		angle = Math.PI*2*Math.random();
		speed = 1;
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	public void move()
	{
		xPos = xPos + (float)(Math.cos(angle)*speed);
		yPos = yPos + (float)(Math.sin(angle)*speed);
		if(xPos > 500 || xPos < 0 || yPos > 500 || yPos < 0)
		{
			xPos = mouseX;
			yPos = mouseY;
		}
	}
	public void show()
	{
		noStroke();
		fill(pColor);
		ellipse(xPos, yPos, pSize, pSize);
	}
	
	//your code here
}
interface Particle
{
	public void move();
	public void show();//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

