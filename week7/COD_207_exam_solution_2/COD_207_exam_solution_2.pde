String s;

void setup() {
  size(800,800);

}

void draw() {
  background(255);
  
  /*for(int i = 1; i < 101; i++) {
    if(i % 3 == 0 && i % 5 == 0) {
      println(i + " FizzBuzz");
    }else if(i % 3 == 0) {
      println(i + " Fizz");
    }else if(i % 5 == 0) {
      println(i + " Buzz");
    }else{
     println(i); 
    }
  }*/
  
  for(int i = 1; i < 101; i++) {
    s = "";
    if(i % 3 == 0) {
      s = "Fizz";
    }
    
    if(i % 5 == 0) {
      s = s + "Buzz";
    }
    
    if(i % 3 != 0 && i % 5 != 0)
      println(i);
     else 
      println(s);
  }
}
