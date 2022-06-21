void telaJogo(){

    background(#0095F0);
    image(background, 0, 10);
    playerXwas = playerX;
    playerYwas = playerY;
  
    rect(playerX, playerY, playerW, playerH);
      fill(#FFFFFF);
    
    movePlayer();
    
    println(get(mouseX, mouseY));
}
