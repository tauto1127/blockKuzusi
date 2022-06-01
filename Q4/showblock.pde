void showBlocks(int[] block){
  for(int i= 0; i < block.length; i ++ ){
    if(block[i] > 0){
      rect(i * 40, 40, 40, 40);
      text(block[i], i * 40, 40);
    }
  }
} 
