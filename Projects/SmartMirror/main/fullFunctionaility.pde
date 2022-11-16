////import processing.sound.*; //for the sound //<>//

////Audio beepSound = new Audio(); // to use sound online
////SoundFile beepSound; //to use sound in Processing application

//static int canvasWidth = 1900;
//static int canvasHeight = 1000;

//static int btnWidth = 120;
//static int btnHeight = 120;

//static int widgetWidth = 540;
//static int widgetHeight = 380;

//static int sideOffset = 8;
//static int topOffset = 68;

//static int fingerPrintCounter = 0;

//Button[] buttons = new Button[19];
//PImage[] images = new PImage[29];
//PImage bg;

//Clock clock;
//boolean displayTempInF = true;
//boolean menuOpen = false;
//int menuChoice = 0;
//int lastClicked = 0;
//PFont f2;
//String tempF = "42°F";
//String tempC = "5.6°C";
//PImage back;
//PImage settings;
//boolean settings_selected = false;
//boolean set_date = false;
//boolean set_time = false;
//boolean timer_on = false;
//boolean signed_in = false;
//color gray_dark, black, gray, white;
//PFont f;

////array of setting menu options
//Option[] settings_options = new Option[5];

////current language selected
//String current_language;
//int curr_lang;

//Calendar cal;

////arrayLists for news and social sites selected
//ArrayList<String> news = new ArrayList(); 
//ArrayList<String> socials = new ArrayList(); 

//String[][][] option_names = { 
//  { {"Pick News", "FOX", "Reddit", "English", "Set Date (mmddyyyy)", "Enabled"}, 
//    {"Elegir noticias", "FOX", "Reddit", "Inglés", "Establece la fecha (mmddyyyy)", "Habilitado"}, 
//    {"Choisir des nouvelles", "FOX", "Reddit", "Anglais", "Régler la date (mmddyyyy)", "Activée"}, 
//    {"Wählen Sie News", "FOX", "Reddit", "Englisch", "Datum einstellen (mmddyyyy)", "Aktiviert"}, 
//  {"Wybierz wiadomość", "FOX", "Reddit", "język angielski", "Ustawić datę (mmddyyyy)", "Włączone"} }, 

//  { {"Pick Social Media", "CNN", "Facebook", "Spanish", "Set Time (hhmm)", "Disabled"}, 
//    {"Elegir medios sociales", "CNN", "Facebook", "Español", "Fijar tiempo (hhmm)", "discapacitado"}, 
//    {"Choisir les médias sociaux", "CNN", "Facebook", "Espanol", "TempsRégler le temps (hhmm)", "désactivé"}, 
//    {"Wähle Social Media", "CNN", "Facebook", "Spanisch", "Zeit einstellen (hhmm)", "Behindert"}, 
//  {"Wybierz Media społecznościowe", "CNN", "Facebook", "język hiszpański", "Ustaw czas (hhmm)", "Niepełnosprawny"}}, 

//  { {"Languages", "The Onion", "Twitter", "French", "Go Back", "Set Sign-Off Length"}, 
//    {"Idiomas", "The Onion", "Twitter", "francés", "Regresa", "Set Sign-Off Longitud"}, 
//    {"Langues", "The Onion", "Twitter", "français", "réintégrer", "Définir la durée de connexion"}, 
//    {"Sprachen", "The Onion", "Twitter", "Französisch", "Geh zurück", "Set Abmeldung"}, 
//  {"Języki", "The Onion", "Twitter", "Francuski", "Wracaj", "Ustaw długość logowania"} }, 

//  { {"", "BBC News", "Tumblr", "German", "", "Current Length:  "}, 
//    {"", "BBC News", "Tumblr", "alemán", "", "Longitud actual:  "}, 
//    {"", "BBC News", "Tumblr", "allemand", "", "Longueur actuelle:  "}, 
//    {"", "BBC News", "Tumblr", "Deutsche", "", "Aktuelle Länge:  "}, 
//  {"", "BBC News", "Tumblr", "Niemiecki", "", "Aktualna długość:  "} }, 

//  { {"Auto Sign-Off", "Go Back", "Go Back", "Polish", "", "Go Back"}, 
//    {"Auto firmar", "Regresa", "Regresa", "polaco", "", "Regresa"}, 
//    {"Démarrage automatique", "réintégrer", "réintégrer", "polonais", "", "réintégrer"}, 
//    {"Automatische Abmeldung", "Geh zurück", "Geh zurück", "Polieren", "", "Geh zurück"}, 
//  {"Automatyczne wylogowanie", "Wracaj", "Wracaj", "Polskie", "", "Wracaj"} } 
//};


//int options_x, options_y;
//int index = 0; //to signify which names to show in settings menu
//int radius = 85;
//int current_time, saved_time, next;
//String date = "", time = "", sign_off = "";
//String timer = "";

//boolean healthWidgetDisplay = false;
//boolean weatherWidghetDisplay = false;


////------------------------------------------------------------
////                         SETUP                            --
////------------------------------------------------------------
//void settings() {
//    size(1900, 1000);
//}


//void setup() 
//{
//  cal = new Calendar(canvasWidth-sideOffset-(int)(3.75*btnWidth), topOffset+ (int)(btnHeight*1.5), (int)(btnWidth*.5), (int)(btnHeight*.5));
//  bg = loadImage("glass2.jpg");
//  size(1900, 1000);
//  image(bg, 0, 0);
//  bg.resize(1900,1000);
//  image(bg,0,0);

//  images[0] = loadImage("icon_menu.png");
//  images[1] = loadImage("icon_account.png");
//  images[2] = loadImage("icon_news.png");
//  images[3] = loadImage("icon_health.png");
//  images[4] = loadImage("icon_reddit.png");
//  images[5] = loadImage("icon_facebook.png");
//  images[6] = loadImage("icon_twitter.png");
//  images[7] = loadImage("icon_tumblr.png");
//  images[8] = loadImage("icon_fox.png");
//  images[9] = loadImage("icon_cnn.png");
//  images[10] = loadImage("icon_onion.png");
//  images[11] = loadImage("icon_bbc.png");
//  images[12] = loadImage("icon_weather.png");
//  images[13] = loadImage("icon_clock.png");
//  images[14] = loadImage("icon_settings.png");
//  images[15] = loadImage("icon_fingerprint.png");
//  images[16] = loadImage("icon_steps.png");
//  images[17] = loadImage("icon_weight.png");
//  images[18] = loadImage("icon_sleep.png");

//  //WIDGETS
//  images[19] = loadImage("widget_weather.png");
//  images[20] = loadImage("widget_facebook.png");
//  images[21] = loadImage("widget_reddit.png");
//  images[22] = loadImage("widget_twitter.png");
//  images[23] = loadImage("widget_tumblr.png");
//  images[24] = loadImage("widget_FOX.png");
//  images[25] = loadImage("widget_CNN.png");
//  images[26] = loadImage("widget_onion.png");
//  images[27] = loadImage("widget_BBC.png");

//  frameRate(30);

//  //Menu
//  buttons[0] = new Button(0, 850, btnWidth, btnHeight, images[0]);

//  //Menu Selection
//  buttons[1] = new Button(170, 850, btnWidth, 115, images[1]);
//  buttons[2] = new Button(350, 830, 150, 150, images[2]);
//  buttons[3] = new Button(550, 850, btnWidth, 100, images[3]);

//  //Social Media
//  buttons[4] = new Button(100, 850, btnWidth, btnHeight, images[4]);
//  buttons[5] = new Button(100, 750, btnWidth, btnHeight, images[5]);
//  buttons[6] = new Button(100, 750, btnWidth, btnHeight, images[6]);
//  buttons[7] = new Button(100, 750, btnWidth, btnHeight, images[7]);

//  //News
//  buttons[8] = new Button(sideOffset + btnWidth + btnWidth/2, canvasHeight - (topOffset+2*btnHeight), btnWidth, btnHeight, images[8]);
//  buttons[9] = new Button(sideOffset + btnWidth + btnWidth/2, canvasHeight - (topOffset+3*btnHeight), btnWidth, btnHeight, images[9]);
//  buttons[10] = new Button(sideOffset + btnWidth + btnWidth/2, canvasHeight - (topOffset+4*btnHeight), btnWidth, btnHeight, images[10]);
//  buttons[11] = new Button(sideOffset + btnWidth + btnWidth/2, canvasHeight - (topOffset+5*btnHeight), btnWidth, btnHeight, images[11]);

//  // Weather
//  buttons[12] = new Button(10, 5, btnWidth, btnHeight, images[12]);

//  // Clock
//  buttons[13] = new Button(1740, 30, btnWidth, btnHeight, "");
//  clock = new Clock(1740, 30, btnWidth, btnHeight);

//  // Settings
//  buttons[14] = new Button(1775, 850, btnWidth, btnHeight, images[14]);

//  //  Fingerprint
//  buttons[15] = new Button(900, 800, btnWidth, btnHeight, images[15]);
//  buttons[16] = new Button(900, 800, btnWidth, btnHeight, "");

//  //create user buttons
//  buttons[17] = new Button(sideOffset + btnWidth*7, canvasHeight - (topOffset+2*btnHeight), btnWidth, btnHeight, "Yes");
//  buttons[18] = new Button(sideOffset + btnWidth*9, canvasHeight - (topOffset+2*btnHeight), btnWidth, btnHeight, "No");


//  f2 = createFont("DialogInput.plain", 48, true);
 
//  //settings = loadImage("icon_sleep.png", "png");

//  // Colors
//  gray_dark = color(128, 128, 128); 
//  black = color(0, 0, 0); //black
//  gray = color(192, 192, 192); //gray
//  white = color(255, 255, 255); //white

//  f = createFont("DialogInput.plain", 48, true);
//  current_language = "English";

//  //coordinates for setting menu
//  options_x = 1750;
//  options_y = 850;

//  saved_time = 0;

//  //setup the settings menu options
//  for (int i=0; i<5; i++)
//  {
//    settings_options[i] = new Option(option_names[i], 1550, 800);
//    options_y += 90;

//    if (i == 0)
//    {
//      settings_options[i].lang_color = black;
//      settings_options[i].setNewsColor(black);
//      settings_options[i].setSocialColor(black);
//    }
//    if (i == 1)
//    {
//      settings_options[i].enabled_color = black;
//    }
//  }

//  //default options
//  news.add("FOX");
//  socials.add("Reddit");
//}

////------------------------------------------------------------
////                         DRAW                             --
////------------------------------------------------------------
//void draw() 
//{
//  tint(white);
//  background(bg);  

//  if (buttons[15].toggled && !signed_in) {
//    signed_in = true;
//  }

//  if (signed_in) {
//    //settings.loadPixels();
//    //image(settings, 1750, 850, btnWidth, btnHeight);
//  }

//  //if the gear icon was clicked
//  if (settings_selected)
//  {
//    stroke(black); 

//    tint(white); //tint the settings icon red to show it was pressed
//    image(settings, 1750, 850, btnWidth, btnHeight);

//    noFill();
//    stroke(128);
//    rect(2132, 1550, 600, 450, 10);
//    textFont(f);
//    showSettingsMenu(index, 0);

//    if (settings_options[0].isClicked(0))
//      showSettingsMenu(index, 1);

//    if (settings_options[1].isClicked(0))
//      showSettingsMenu(index, 2);

//    if (settings_options[2].isClicked(0))
//    {
//      //println("index = " + index + " , lang = " + curr_lang);
//      showSettingsMenu(index, 3);
//    }
//    if (settings_options[0].isClicked(4))
//    {
//      show_numpad();
//      textFont(f, 80);
//      text(date, 1100, 400);
//    }
//    if (settings_options[1].isClicked(4))
//    {
//      show_numpad();
//      textFont(f, 80);
//      text(time, 1200, 400);
//    }
//    if (settings_options[2].isClicked(5))
//    {
//      show_numpad();
//      textFont(f, 80);
//      text(sign_off, 1200, 400);
//    }
//    if (settings_options[4].isClicked(1) || settings_options[4].isClicked(2) || settings_options[4].isClicked(4))
//    { 
//      showSettingsMenu(index, 0);
//    }
//    if (settings_options[4].isClicked(0))
//      showSettingsMenu(index, 5);
//  }
//  //else //turn settings icon back to normal
//  //{
//  //  if (true) {
//  //    tint(gray);
//  //    image(settings, 1750, 850, btnWidth, btnHeight);
//  //  }
//  //}


//  /***************************************************
//   *                  Time Logic                      *
//   ***************************************************/
   
//  if (settings_options[0].isClicked(5))
//  {
//    //println("Time.....");
//    current_time = (floor(millis())/1000);
//    next++;
//    //println("current = " + current_time + ", saved = " + saved_time + ", next = " + next);
//    if (current_time != saved_time && next == 4)
//    {
//      timer = updateTimer();
//      saved_time = current_time ;

//      if (next < 4)
//        next ++;
//      else
//        next = 0;
//    }

//    textFont(f, 80);
//    println("timer = " + timer);
//  }

//  if (timer.equals("00:00") || timer.equals("0:00"))
//    signed_in = false;

//  //update the logic       
//  logic();

//  //display menu and settings only if signed in
//  if (signed_in) {
//    buttons[0].render();
//    buttons[12].render();
//  }

//  //fingerpint
//  if (!signed_in)
//    buttons[15].render();

//  //if wrong user
//  if (buttons[16].toggled && !signed_in) {


//    textSize(48);
//    textAlign(CENTER);
//    text("User not recognized, create new user?", sideOffset + btnWidth*7 + (btnWidth*.1), canvasHeight - (topOffset+3*btnHeight) + (btnHeight*.45), btnWidth*3, btnHeight);

//    textAlign(LEFT);
//    buttons[17].render();
//    text("Yes", sideOffset + btnWidth*7 + (btnWidth*.3), canvasHeight - (topOffset+2*btnHeight) + (btnHeight*.4), btnWidth, btnHeight);

//    buttons[18].render();
//    text("No", sideOffset + btnWidth*9 + (btnWidth*.3), canvasHeight - (topOffset+2*btnHeight) + (btnHeight*.4), btnWidth, btnHeight);
//  }

//  if (buttons[17].toggled) {
//    buttons[16].toggled = false;
//    textSize(48);
//    textAlign(CENTER);
//    text("Hold finger to fingerprint icon for 3 seconds", 1400, 500, btnWidth*3, btnHeight);
//  }
  
//  if(buttons[18].toggled){
//    buttons[15].toggled = false;
//    buttons[16].toggled = false;
//    buttons[17].toggled = false;
    
//  }

//  //display weather
//  buttons[12].render();

//  //display clock
//  clock.render();

//  //display calendar
//  if (buttons[13].toggled) {
//    textSize(28);
//    cal.render();
//  }

//  //display facebook
//  if (buttons[5].toggled) {
//    displayLeftWidget(20);
//  }

//  //display reddit
//  if (buttons[4].toggled) {
//    displayLeftWidget(21);
//  }

//  //display twitter
//  if (buttons[6].toggled) {
//    displayLeftWidget(22);
//  }

//  //display tumblr
//  if (buttons[7].toggled) {
//    displayLeftWidget(23);
//  }

//  //display FOX
//  if (buttons[8].toggled) {
//    displayLeftWidget(24);
//  }

//  //display CNN
//  if (buttons[9].toggled) {
//    displayLeftWidget(25);
//  }

//  //display Onion
//  if (buttons[10].toggled) {
//    displayLeftWidget(26);
//  }

//  //display BBC
//  if (buttons[11].toggled) {
//    displayLeftWidget(27);
//  }

//  //display weather widget
//  if (buttons[12].toggled) {

//    if (buttons[1].toggled || buttons[2].toggled || buttons[3].toggled) {
//    } else {

//      image(images[19], 50, 180, widgetWidth, widgetHeight);
//      stroke(128);
//      noFill();
//      rect(50, 180, widgetWidth, widgetHeight, 10);
//    }
//  }


//  //the temperature
//  textSize(72);

//  fill(128); 

//  if (displayTempInF)
//    text(tempF, 200, 5, 2*btnWidth, btnHeight);
//  else
//    text(tempC, 200, 5, 2*btnWidth, btnHeight);

//  //the date
//  textFont(f, 28);
//  text(date, 1500, 40, 2*btnWidth, btnHeight);

//  //the time
//  textFont(f, 32);
//  text(time, 1500, 40, 2*btnWidth, btnHeight);


//  //only display sub menu's if menu is open
//  if (menuOpen) {
//    println("RENDERING......");
//    buttons[1].render();
//    buttons[2].render();
//    buttons[3].render();

//    //display social media buttons if needed
//    if (buttons[1].toggled) {
//      orderButtons(socials);

//      for (int i=4; i < 8; i++) {

//        if (buttons[i].shouldDisplay) {
//          buttons[i].render();
//        }
//      }
//    }

//    //display news buttons if needed
//    if (buttons[2].toggled) {
//      orderButtons(news);

//      for (int i=8; i < 12; i++) {

//        if (buttons[i].shouldDisplay) {
//          buttons[i].render();
//        }
//      }
//    }

//    //if health button is toggled
//    if (buttons[3].toggled) {

//      //the rectangle 
//      stroke(128);
//      noFill();
//      rect(50, 200, widgetWidth, widgetHeight, 10);

//      //steps icon & text
//      image(images[16], 50, 200, btnWidth, btnHeight);
//      textSize(22);
//      text("Yesterday:    4673", 60, 350, btnWidth+20, btnHeight*2);
//      text("Today:     4268", 60, 500, btnWidth, btnHeight*2);


//      //weight icon & text
//      image(images[17], 250, 200, btnWidth, btnHeight);
//      text("Last week:    160lb", 230, 350, btnWidth+20, btnHeight*2);
//      text("This week:    161lb", 230, 500, btnWidth+20, btnHeight*2);

//      //sleep icon * text
//      image(images[18], 450, 200, btnWidth, btnHeight);
//      text("Yesterday:   7 hours", 430, 350, btnWidth+20, btnHeight*2);
//      text("  Today:      8 hours", 430, 500, btnWidth+20, btnHeight*2);
//    }
//  }  
//}



////displays the widget associated with button number
//void displayLeftWidget(int imgNum) {
//  tint(white);
//  image(images[imgNum], 1300, 550, widgetWidth, widgetHeight);
//  stroke(128);
//  noFill();
//  rect(1300, 550, widgetWidth, widgetHeight, 11);
//}

////function to recalucate the positions of buttons
//// based on selected news or social media
//void orderButtons(ArrayList<String> list) {
//  int size = list.size();

//  for (int i=4; i<12; i++) {

//    buttons[i].shouldDisplay = false;
//  }

//  for (int i=0; i < size; i++) {

//    Button btn = new Button(5, canvasHeight - (topOffset+(i+2)*btnHeight), btnWidth, btnHeight, images[0]);

//    String name = list.get(i);

//    //change the image of the button based on string
//    switch(name) {

//    case "Reddit":
//      btn.setImage(images[4]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[4].toggled;
//      buttons[4] = btn;
//      break;
//    case "Facebook":
//      btn.setImage(images[5]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[5].toggled;

//      buttons[5] = btn;
//      break;
//    case "Twitter":
//      btn.setImage(images[6]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[6].toggled;

//      buttons[6] = btn;
//      break;
//    case "Tumblr":
//      btn.setImage(images[7]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[7].toggled;

//      buttons[7] = btn;
//      break;
//    case "FOX":
//      btn.setImage(images[8]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[8].toggled;

//      buttons[8] = btn;
//      break;
//    case "CNN":
//      btn.setImage(images[9]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[9].toggled;

//      buttons[9] = btn;
//      break;
//    case "The Onion":
//      btn.setImage(images[10]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[10].toggled;

//      buttons[10] = btn;
//      break;
//    case "BBC News":
//      btn.setImage(images[11]);
//      btn.shouldDisplay = true;
//      btn.toggled = buttons[11].toggled;

//      buttons[11] = btn;
//      break;
//    }
//  }
//}


///**************************
// * method to show numpad   *
// **************************/
//void show_numpad()
//{

//  fill(gray);
//  ellipse(1100, 600, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("7", 1080, 620);

//  fill(gray);
//  ellipse(1330, 600, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("8", 1310, 620);

//  fill(gray);
//  ellipse(1560, 600, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("9", 1540, 620);

//  /******* second row ****************/
//  fill(gray);
//  ellipse(1100, 800, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("4", 1080, 820);

//  fill(gray);
//  ellipse(1330, 800, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("5", 1310, 820);

//  fill(gray);
//  ellipse(1560, 800, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("6", 1540, 820);

//  /******* third row ****************/
//  fill(gray);
//  ellipse(1100, 1000, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("1", 1080, 1020);

//  fill(gray);
//  ellipse(1330, 1000, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("2", 1310, 1020);

//  fill(gray);
//  ellipse(1560, 1000, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("3", 1540, 1020);

//  /******* fourth row ****************/
//  fill(gray);
//  rect(1000, 1130, 210, 150);
//  textFont(f, 65);
//  fill(black);
//  text("clear", 1015, 1215);

//  fill(gray);
//  ellipse(1330, 1200, 170, 170);
//  textFont(f, 70);
//  fill(black);
//  text("0", 1310, 1220);

//  fill(gray);
//  rect(1460, 1130, 210, 150);
//  textFont(f, 65);
//  fill(black);
//  text("done", 1475, 1215);
//}


////shows the correct names in the settings menu 
//void showSettingsMenu(int index, int color_num)
//{
//  for (int i=0; i<5; i++)
//  {
//    if (color_num == 0)
//      fill(gray_dark);
//    else if (color_num == 1)
//      fill(settings_options[i].getNewsColor());
//    else if (color_num == 2)
//      fill(settings_options[i].getSocialColor());
//    else if (color_num == 3)
//      fill(settings_options[i].getLanguageColor());
//    else if (color_num == 5)
//      fill(settings_options[i].getEnabledColor());

//    textFont(f, 33);
//    text(settings_options[i].getOptionName(index), settings_options[i].getX(), settings_options[i].getY());
//  }
//}


//void resetSettingsMenu()
//{
//  index = 0;
//  settings_selected = false;

//  for (Option t : settings_options)
//    if (t.getY() != 806)
//      t.setOptionClicked(false, 0);
//}


////adds number to date string
//String addToDate(String date, String s)
//{
//  if (date.length() < 10)
//  {  
//    date = date + s;

//    if (date.length() == 2 || date.length() == 5)
//      date = date + "/";
//  }

//  return date;
//}


////add number to time string
//String addToTime(String time, String s)
//{
//  if (time.length() < 5)
//  {  
//    time = time + s;

//    if (time.length() == 2)
//      time = time + ":";
//  }

//  return time;
//}


//boolean isNum(char c)
//{
//  int x = c;
//  //println("x = " + x );
//  if (x < 48 && x > 57)
//    return false;
//  else
//    return true;
//}



///****************************************
// * method to update the time remaining   *
// ****************************************/
//String updateTimer()
//{
//  //println("time = " + time);
//  String t = "";
//  String min;
//  String sec = timer.substring(timer.indexOf(":") + 1);

//  if (timer.lastIndexOf(":") == 2)
//    min = timer.substring(0, 2);
//  else
//    min = timer.substring(0, 1);

//  if (sec.length() < 2)
//    sec = "0" + sec;

//  //println("min = " + min);
//  if (min.equals("00") && sec.equals("00"))
//  {
//    settings_options[0].setOptionClicked(false, 0);
//    return "00:00";
//  } else if (sec.equals("00"))
//  {
//    //println("min2 = " + str(parseInt(min) - 1));
//    if (min.equals("01") || min.equals("1"))
//      min = "00";
//    else if (!min.equals("00") && !min.equals("01"))
//      min = str(parseInt(min) - 1);

//    sec = "59";
//  } else if (!sec.equals("00"))
//  {
//    //println("x = " + parseInt(sec));
//    sec = str(parseInt(sec) - 1);
//  } else if (!min.equals("00"))
//  {
//    min = str(parseInt(min) - 1);
//  }

//  if (parseInt(min) < 10)
//    min = "0" + min.charAt(1);

//  if (parseInt(sec) < 10)
//    sec = "0" + sec;

//  t = min + ":" + sec;

//  return t;
//} 


////updates all non render related logic
//void logic() {

//  //is menu opened?
//  menuOpen = buttons[0].toggled;

//  if (menuOpen)
//    buttons[12].toggled = false;

//  //if menu is closed, untoggle all sub buttons
//  if (!menuOpen && lastClicked==0) {
//    for (int i=1; i< 12; i++) {

//      //if button is toggled, untoggle it
//      if (buttons[i].toggled) {
//        buttons[i].toggled = false;
//        buttons[i].changeColor();
//      }
//    }//end for
//  }

//  //if social media is closed, untoggle all sub buttons
//  if (!buttons[1].toggled) {
//    for (int i=4; i< 8; i++) {

//      //if button is toggled, untoggle it
//      if (buttons[i].toggled) {
//        buttons[i].toggled = false;
//        buttons[i].changeColor();
//      }
//    }//end for
//  }

//  //if news is closed, untoggle all sub buttons
//  if (!buttons[2].toggled) {
//    for (int i=8; i< 12; i++) {

//      //if button is toggled, untoggle it
//      if (buttons[i].toggled) {
//        buttons[i].toggled = false;
//        buttons[i].changeColor();
//      }
//    }//end for
//  }

//  //only one submenu can be on
//  if (lastClicked > 0 && lastClicked < 4) {
//    submenuFix(1, 4, lastClicked);
//  }

//  //only one sub-sub menu can be on
//  if (lastClicked > 3 && lastClicked < 12) {
//    submenuFix(4, 12, lastClicked);
//  }
//}//end logic


////given the value, only that button number gets toggled
////and it untogles every other
//void submenuFix(int start, int end, int choice) {

//  for (int i= start; i < end; i++) {  
//    //skip the chosen
//    if (i != choice) {
//      buttons[i].toggled = false;      
//      buttons[i].changeColor();
//    }
//  }//end for
//}//end submenuFix