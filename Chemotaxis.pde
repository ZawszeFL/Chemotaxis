 //declare bacteria variables here   
 int x=200;
 int y=200;
 //int c=fill(200,200,200);
 Bacteria [] colony;

 void setup()   
 {     
 	size(500,500);
 	
 	
	colony =new Bacteria[1000];
 	for(int i=0; i<colony.length; i++)
  	{
    colony[i] = new Bacteria(x,y);
	}


 	 

 	
 }   
 void draw()   
 {   
 	
	 background(0);
 	 
 	 for(int i=0; i<colony.length; i++)
 	 {
   	 
			 colony[i].show();
 	 colony[i].walk();	
 	 	
 	 }
 
 }  
 class Bacteria    
 {   
 	int myX,myY;
 	int type;
 	
 	Bacteria(int x, int y)
 	{
 	myX=x;
 	myY=y;
 	
 	}	


 	void show()
 	{	
 		fill((int)(Math.random()*100)+100,(int)(Math.random()*9)-4,(int)(Math.random()*100)+150);
 		ellipse(myX%475,myY%475,4,4);
 		if(myX<0 || myY<0)
 		{
 			myX=200;
 			myY=200;
 		}
 	}

 	void walk()
 	{
 		myX=myX+(int)(Math.random()*10)-4;
 		myY=myY+(int)(Math.random()*9)-4;
 	}
 }    