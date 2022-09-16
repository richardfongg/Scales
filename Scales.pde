void setup() {
  size(500, 500);  
}
void draw() {
  for(var i = -50; i < 500; i = i + 50){
  translate(-50, i);
  feather();
  }
}
void feather() {
  for(int i = -200; i < 500; i = i + 100){
    for(int j = -200; j < 700; j = j + 50){
       wing(j,0);
       wing(-j,0);
  }}
}
void wing(int x, int y) {
  translate(x,y);
  scale(200,100);
  scale(400,200);
  scale(400,300);
  scale(300,400);
  scale(300,600);
  scale(500,800);
  scale(300,900);
}
void scale(int x, int y) {
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  bezier(100,100,x,y,100,100,50,50);
  bezier(100,100,y,x,100,100,50,50);
}

