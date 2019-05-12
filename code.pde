boolean choose = true;
boolean results = false;

boolean pchoice_rock = false;
boolean pchoice_paper = false;
boolean pchoice_scissors = false;

boolean bchoice_rock = false;
boolean bchoice_paper = false;
boolean bchoice_scissors = false;

// int countdown = 3;

int gamecount = 1;

boolean a = true;

void setup() {
  size(600,300);
}

void draw() {
  if(choose) {
    // Прави менюто за избиране.
    background(#323944);
    fill(255,255,255);
    rect(100,100,100,100);
    fill(255,255,255);
    rect(250,100,100,100);
    fill(255,255,255);
    rect(400,100,100,100);
    
    textSize(20);
    fill(0,0,0);
    text("КАМЪК", 115,160);
    fill(0,0,0);
    text("НОЖИЦА", 255,160);
    fill(0,0,0);
    text("ХАРТИЯ", 410, 160);
    
    // Позволява ти да избереш.
    if((mouseX > 100) && (mouseX < 200) && (mouseY > 100) && (mouseY < 200) && (mousePressed)) {
      pchoice_rock = true;
      println("----- NEW GAME (" + gamecount + ") -----");
      println("Player chose ROCK.");
      String[] rps = {"rock", "paper", "scissors"};
      int index = int(random(rps.length));
      if(index == 1) {
        bchoice_rock = true;
        println("Bot chose ROCK.");
      }
      else if(index == 2) {
        bchoice_paper = true;
        println("Bot chose PAPER.");
      }
      else {
        bchoice_scissors = true;
        println("Bot chose SCISSORS.");
      }
      
      results = true;
      choose = false;
    }
    if((mouseX > 250) && (mouseX < 350) && (mouseY > 100) && (mouseY < 200) && (mousePressed)) {
      pchoice_scissors = true;
      println("----- NEW GAME (" + gamecount + ") -----");
      println("Player chose SCISSORS.");
      String[] rps = {"rock", "paper", "scissors"};
      int index = int(random(rps.length));
      if(index == 1) {
        bchoice_rock = true;
        println("Bot chose ROCK.");
      }
      else if(index == 2) {
        bchoice_paper = true;
        println("Bot chose PAPER.");
      }
      else {
        bchoice_scissors = true;
        println("Bot chose SCISSORS.");
      }      
      
      results = true;
      choose = false;
    }
    if((mouseX > 400) && (mouseX < 500) && (mouseY > 100) && (mouseY < 200) && (mousePressed)) {
      pchoice_paper = true;
      println("----- NEW GAME (" + gamecount + ") -----");
      println("Player chose PAPER.");
      //float bchoice = random(0,4);
      String[] rps = {"rock", "paper", "scissors"};
      int index = int(random(rps.length));
      if(index == 1) {
        bchoice_rock = true;
        println("Bot chose ROCK.");
      }
      else if(index == 2) {
        bchoice_paper = true;
        println("Bot chose PAPER.");
      }
      else {
        bchoice_scissors = true;
        println("Bot chose SCISSORS.");
      }
      
      results = true;
      choose = false;
    }
  }
  if(results) {
    // Проверява дали печелиш, губиш или е равенство.
    if((pchoice_rock) && (bchoice_scissors)) {
      background(66, 244, 101);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("КАМЪК", 65,160);
      text("НОЖИЦА", 455, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ПЕЧЕЛИШ!", 220,160);
      while(a) {
        println("Winner: PLAYER");
        gamecount++;
        a = false;
      } 
      
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {
      
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;
        a = true;
        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_rock) && (bchoice_paper)) {
      background(244, 65, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("КАМЪК", 65,160);
      text("ХАРТИЯ", 460, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ГУБИШ!", 250,160);
      while(a) {
        println("Winner: BOT");
        gamecount++;
        a = false;
      } 
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_rock) && (bchoice_rock)) {
      background(244, 223, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("КАМЪК", 65,160);
      text("КАМЪК", 465, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("РАВЕНСТВО!", 220,160);
      while(a) {
        println("Winner: -");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        a = true;
        results = false;
    
      }
    }
    else if((pchoice_paper) && (bchoice_scissors)) {
      background(244, 65, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("ХАРТИЯ", 60, 160);
      text("НОЖИЦА", 455, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ГУБИШ!", 250,160);
      while(a) {
        println("Winner: BOT");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_paper) && (bchoice_rock)) {
      background(66, 244, 101);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("ХАРТИЯ", 60, 160);
      text("КАМЪК", 465, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ПЕЧЕЛИШ!", 220,160);
      while(a) {
        println("Winner: PLAYER");
        gamecount++;
        a = false;
      } 
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_paper) && (bchoice_paper)) {
      background(244, 223, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("ХАРТИЯ", 65,160);
      text("ХАРТИЯ", 460, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("РАВЕНСТВО!", 220,160);
      while(a) {
        println("Winner: -");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_scissors) && (bchoice_rock)) {
      background(244, 65, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("НОЖИЦА", 55, 160);
      text("КАМЪК", 465, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ГУБИШ!", 250,160);
      while(a) {
        println("Winner: BOT");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
      
    }
    else if((pchoice_scissors) && (bchoice_paper)) {
      background(66, 244, 101);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("НОЖИЦА", 55, 160);
      text("ХАРТИЯ", 460, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("ПЕЧЕЛИШ!", 220,160);
      while(a) {
        println("Winner: PLAYER");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
      
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
    else if((pchoice_scissors) && (bchoice_scissors)) {
      background(244, 223, 65);
      
      fill(255,255,255);
      rect(50,100,100,100);
      fill(255,255,255);
      rect(450,100,100,100);
      
      textSize(20);
      fill(0,0,0);
      text("НОЖИЦА", 55,160);
      text("НОЖИЦА", 455, 160);
      
      textSize(20);
      fill(0,0,0);
      text("ТИ:", 80, 90);
      text("ПРОТИВНИК:", 450,90);

      textSize(30);
      fill(0,0,0);
      text("РАВЕНСТВО!", 220,160);
      while(a) {
        println("Winner: -");
        gamecount++;
        a = false;
      }
      
      fill(255,255,255);
      rect(200,200,200,50);
    
      fill(0,0,0);
      textSize(30);
      text("Нова игра", 230, 235);
    
      if((mouseX < 400) && (mouseX > 200) && (mouseY < 250) && (mouseY > 200) && (mousePressed)) {

        a = true;
        
        choose = true;
        pchoice_rock = false;
        pchoice_paper = false;
        pchoice_scissors = false;

        bchoice_rock = false;
        bchoice_paper = false;
        bchoice_scissors = false;
        results = false;
    
      }
    }
}

// Ако не работи, ще се рестартира.
/*if((choose) && ((bchoice_rock = false) && (bchoice_paper = false) && (bchoice_scissors = false)) && ((pchoice_rock = true) || (pchoice_paper = true) || (pchoice_scissors = true))) {
  forcerestart();
}

}

void forcerestart() {
  pchoice_rock = false;
  pchoice_paper = false;
  pchoice_scissors = false;

  bchoice_rock = false;
  bchoice_paper = false;
  bchoice_scissors = false;
      
  choose = false;
  
  delay(5);
  
  choose = true;
}
*/

}
