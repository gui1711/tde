void tela1(){
  // fundo tela 1
  fill(#0095F0);   rect(0,0,width, height-0); fill(0); text("Seje bem vindo, Você irá jogar um jogo de labirinto", 180,200);
  if(mousePressed) {
    if((mouseX<100)&&(mouseY>360)) svar=1;
    if((mouseX>100)&&(mouseX<200)&&(mouseY>360)) svar=2;
  }
}
