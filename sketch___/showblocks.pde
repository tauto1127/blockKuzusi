/*void showBlock(int n) {
if (block[n] > 0) {
  rect(n * 40, 40, 40, 40);
  text(block[n], n * 40, 40);
}
}
void setup() {
size(400, 300);
for(int i=0;i<10;i++){showBlock(i);}
}*/
void showBlocks(int[] block){
  for(int i= 0; i < block.length; i ++ ){
    if(block[i] > 0){
      rect(i * 40, 40, 40, 40);
      text(block[i], i * 40, 40);
    }
  }
}  
