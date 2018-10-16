int sum;
int a;
int b;

Boolean result;

void setup() {
  
 background(255);
 size(600,600);
 /*elipse(0,0,50,50)*/
 
 
 a = 4;
 b = 6;
 
 sum = a + b;
 
 if(sum == 10) {
   result =true;
   println(result);
 }else{
    result = false;
    println(result);
    
 }
}


void draw() {
  background(255);
  textSize(64);
  if(result == true) {
    fill(0,255,0);
    text("You know it", 100,100);
  }else{
    fill(255,0,0);
    text("You FAIL", 100,100);
  }
}
