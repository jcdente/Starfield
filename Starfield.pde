Particle[]field;//your code here
public void setup()
{
	size(500, 500);
	//background(0,0,0);
	int addP = 0;
	
	field = new Particle[1500 + addP];
	for(int p = 0; p < field.length; p++)
	{
		field[p] = new NormalParticle();
		
	}//your code here
	field[1] = new OddballParticle(); 
		field[2] = new JumboParticle();
		field[3] = new JumboParticle();
		field[4] = new JumboParticle();
		field[5] = new JumboParticle();
		field[6] = new JumboParticle();
		field[7] = new JumboParticle();
		field[8] = new JumboParticle();
		field[9] = new JumboParticle();
		field[10] = new JumboParticle();
		field[11] = new JumboParticle();
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
	float xPos, yPos, pSize, speed, dirX, dirY;
	double  angle;
	int pColor;
	NormalParticle()
	{
		pSize = 0.85;
		xPos = 250;
		yPos = 250;
		angle = Math.PI*2*Math.random();
		speed = 1;
		dirX = (float)(Math.cos(angle)*speed);
		dirY = (float)(Math.sin(angle)*speed);
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	public void move()
	{
		xPos = xPos + dirX;
		yPos = yPos + dirY;
		if(xPos > 500 || xPos < 0 || yPos > 500 || yPos < 0)
		{
			angle = Math.PI*2*Math.random();
			dirX = (float)(Math.cos(angle)*speed);
			dirY = (float)(Math.sin(angle)*speed);
			xPos = mouseX;
			yPos = mouseY;
		}
		
		if(xPos > mouseX || xPos < mouseX || yPos > mouseY || yPos < mouseY)
		{
			pSize +=0.0025;
		}
		if(xPos==mouseX && yPos==mouseY)
		{
			pSize = 0.85;

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
class OddballParticle implements Particle//uses an interface
{
	float oddballX, oddballY, oddballSize, oddballSpeed, dirX, dirY;
	int oddballColor;
	double oddballAngle;
	OddballParticle()
	{
		oddballX = 250;
		oddballY = 250;
		oddballAngle = Math.PI*2*Math.random();
		oddballSpeed = 1;
		oddballColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		dirX = (float)(Math.cos(oddballAngle)*oddballSpeed);
		dirY = (float)(Math.sin(oddballAngle)*oddballSpeed);
		oddballSize = 50;
	}	
		public void move()
		{
			dirX = (float)(Math.cos(oddballAngle)*oddballSpeed);
			dirY = (float)(Math.sin(oddballAngle)*oddballSpeed);
			oddballX = oddballX + dirX;
			oddballY = oddballY + dirY;
			oddballAngle = oddballAngle + .1;
				
			if(oddballX > 500 || oddballX < 0 || oddballY > 500 || oddballY < 0)
			{
				oddballAngle = Math.PI*2*Math.random();
				dirX = (float)(Math.cos(oddballAngle)*oddballSpeed);
				dirY = (float)(Math.sin(oddballAngle)*oddballSpeed);
				oddballX = mouseX;
				oddballY = mouseY;
			}
		
			if(oddballX > mouseX || oddballX < mouseX || oddballY > mouseY || oddballY < mouseY)
			{
				oddballSize +=0.0025;

			}
			if(oddballX==mouseX && oddballY==mouseY)
			{
				oddballSize = 50;
			}			
		}
		public void show()
		{
			fill(oddballColor);
			ellipse(oddballX, oddballY, oddballSize, oddballSize);
		}//your code here
	}
	

class JumboParticle extends NormalParticle//uses inheritance
{
	float jumboSize;
	JumboParticle()
	{
		jumboSize = 15*pSize;
	}
	void move()
	{
		xPos = xPos + dirX;
		yPos = yPos + dirY;
		if(xPos > 500 || xPos < 0 || yPos > 500 || yPos < 0)
		{
			angle = Math.PI*2*Math.random();
			dirX = (float)(Math.cos(angle)*speed);
			dirY = (float)(Math.sin(angle)*speed);
			xPos = mouseX;
			yPos = mouseY;
		}
		
		if(xPos > mouseX || xPos < mouseX || yPos > mouseY || yPos < mouseY)
		{
			pSize +=0.0025;
		}
		if(xPos==mouseX && yPos==mouseY)
		{
			pSize = 0.85;

		}			
	}
	void show()
	{
		fill(pColor);
		ellipse(xPos, yPos, jumboSize, jumboSize);
	}
	//your code here
}

