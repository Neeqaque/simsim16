uses
    crt,strutils;

label newgame, ending;

var
           subs : integer = 120;
           twTMP{, lbTMP} : string;
           slb : string = #13#10 + #179 + ' ';
           ABC : string;
           twTimer, bossTimer : integer;
           BossCheck,bossS,OutCaptcha : string;
           i:byte;
           bossQ,bossErrors : integer;


procedure test;begin write('test');end;

{procedure ColorsMap;
             var
                  CM : integer;
             begin
                  for CM:= 0 to 15 do begin
                  textcolor (CM); Writeln(CM);
                  end;

             end;}

procedure TypeWriter;
             var
                  twString      :  string;
                  twChr         :  char;
                  twK, twLgth   :  integer;
                  twStop        :  Boolean;
             begin
                  Randomize;
                  twTimer:=0;
                  twString:=#0;
                  twChr:=#0;
                  twK:=0;
                  twLgth:=0;
                  twStop:= false;
                  repeat

                  twString:=twTMP;
                  twLgth:= Length(twString);

                  for twK:=1 to twLgth do
                      begin
                           twChr := twString[twK];
                           Write(twChr);
                           Delay(1{ + Random(1)});
                           {if keypressed then twStop:=true else continue;
                           if keypressed then DelLine else continue;
                           if keypressed then Writeln else continue;
                           if keypressed then Writeln(twTMP) else continue;
                           if twStop = true then break else continue;}
                      end;
                  { ­ åãï ®­ ­ã¦¥­?!  Writeln;}

                  until {(twStop = true) or }(twK = twLgth);
                  twTimer:=twLgth;
             end;

procedure TypeWriter2;
             var
                  twString      :  string;
                  twChr         :  char;
                  twK, twLgth   :  integer;
                  twStop        :  Boolean;
             begin
                  Randomize;
                  twTimer:=0;
                  twString:=#0;
                  twChr:=#0;
                  twK:=0;
                  twLgth:=0;
                  twStop:= false;
                  repeat

                  twString:=twTMP;
                  twLgth:= Length(twString);

                  for twK:=1 to twLgth do
                      begin
                           twChr := twString[twK];
                           Write(twChr);
                           Delay(45 + Random(10));
                           {if keypressed then twStop:=true else continue;
                           if keypressed then DelLine else continue;
                           if keypressed then Writeln else continue;
                           if keypressed then Writeln(twTMP) else continue;
                           if twStop = true then break else continue;}
                      end;
                  { ­ åãï ®­ ­ã¦¥­?!  Writeln;}

                  until {(twStop = true) or }(twK = twLgth);
                  twTimer:=twLgth;
             end;

procedure LoadingBar;

             var
                  T,B,L,R,i : integer;
             begin
                  {Window(15, 5, 65, 20);}
                  gotoxy(21, 11); Write(#218);
                  gotoxy(57, 11); Write(#191);
                  gotoxy(21, 13); Write(#192);
                  gotoxy(57, 13); Write(#217);

                  gotoxy(21, 12); Write(#179);
                  gotoxy(57, 12); Write(#179);

                  for T:= 22 to 56 do begin
                  gotoxy(T, 11); Write(#196);
                  end;

                  for B:= 22 to 56 do begin
                  gotoxy(B, 13); Write(#196);
                  end;

                  for i:=22 to 56 do
                  begin
                       delay(30);
                       GoToXY(i,12); write(#254);
                  end;
             end;

procedure WriteHud;
             var
                  T,B,L,R : integer;
             begin
                  gotoxy(1, 1); Write(#218);
                  gotoxy(80, 1); Write(#191);
                  gotoxy(1, 23); Write(#192);
                  gotoxy(80, 23); Write(#217);

                  for T:= 2 to 79 do begin
                  gotoxy(T, 1); Write(#196);
                  end;

                  for B:= 2 to 79 do begin
                  gotoxy(B, 23); Write(#196);
                  end;

                  for L:= 2 to 22 do begin
                  gotoxy(1, L); Write(#179);
                  end;

                  for R:= 2 to 22 do begin
                  gotoxy(80, R); Write(#179);
                  end;
             end;

procedure WriteHudBug;
             var
                  T,B,L,R : integer;
             begin

                  gotoxy(81, 23); Write(#218);
                  gotoxy(82, 24); Write(#191);
                  gotoxy(80, 25); Write(#192);
                  gotoxy(5, 5); Write(#217);

                  for T:= 1 to 23 do begin
                  gotoxy(T, 26); Write(#196);
                  end;

                  for B:= 2 to 39 do begin
                  gotoxy(B, 22); Write(#196);
                  end;

                  for L:= 2 to 7 do begin
                  gotoxy(1, L); Write(#179);
                  end;

                  for R:= 1 to 60 do begin
                  gotoxy(80, R); Write(#179);
                  end;

             end;

procedure Refresh;
             begin
                  Window(1, 1, 80, 24);
                  cursoroff;
                  clrscr;
                  WriteHud;
                  gotoxy(3, 24); Write('®¤¯¨áç¨ª¨: '); Write(subs);
                  gotoxy(3, 2);
             end;

procedure EfC;
             begin
                  if keypressed then
                  begin
                       gotoxy(3, 21);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       Readln;
                  end
                                else
                  begin
                       gotoxy(3, 21);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       Readln;
                  end
             end;

procedure EfC2;
             begin
                  begin
                  if keypressed then
                  begin
                       gotoxy(3, 21);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       Readln;
                       Window(3, 21, 26, 21);
                       clrscr;
                       Window(1, 1, 80, 24);

                  end
                                else
                  begin
                       gotoxy(3, 21);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       Readln;
                       Window(3, 21, 26, 21);
                       clrscr;
                       Window(1, 1, 80, 24);
                  end
             end;
             end;

procedure EfC3;
             begin
                  begin
                  if keypressed then
                  begin
                       gotoxy(27,23);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       Readln;
                       Window(3, 21, 26, 21);
                       clrscr;
                       Window(1, 1, 80, 24);

                  end
                                else
                  begin
                       gotoxy(27,23);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       Readln;
                       Window(3, 21, 26, 21);
                       clrscr;
                       Window(1, 1, 80, 24);
                  end
             end;
             end;

procedure EfC4;
             begin
                  begin
                  if keypressed then
                  begin
                       gotoxy(27,23);
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       gotoxy(3, 22); cursoron; Readln; cursoroff;

                  end
                                else
                  begin
                       gotoxy(27,23);
                       gotoxy(3, 22); cursoron; Readln; cursoroff;
                  end
             end;
             end;

procedure commodore64;
             var
                  c64bkgr : integer;
             begin
                  cursoroff;
                  Textbackground(1);
                  Window(15, 5, 65, 20);

                  c64bkgr:=0;
                  for c64bkgr:=0 to 6 do
                  begin
                  Write('                                                   ');
                  Write('                                                   ');
                  end;

                  GoToXY(10,2);Write('**** COMMODORE 64 BASIC V2 ****'); delay(500);
                  GoToXY(2,4); twTMP:=('64K RAM SYSTEM 38911 BASIC BYTES FREE'); TypeWriter; delay(500);
                  GoToXY(2,5); twTMP:=('READY.'); TypeWriter; cursoron; delay(200); cursoroff;
                  GoToXY(2,6); twTMP:=('LOAD"$",8'); TypeWriter; delay(1300);
                  GoToXY(2,7); twTMP:=('SEARCHING FOR $'); TypeWriter; delay(700);
                  GoToXY(2,8); twTMP:=('LOADING'); TypeWriter; delay(3000);
                  GoToXY(2,9); twTMP:=('READY.'); TypeWriter; cursoron; delay(200); cursoroff;
                  GoToXY(2,10); twTMP:=('LOAD"SIMSIM16",8,1'); TypeWriter; delay(200);
                  GoToXY(2,11); twTMP:=('LOADING'); TypeWriter; delay(4400);
                  GoToXY(2,12); twTMP:=('READY.'); TypeWriter;
                  cursoroff;
                  Window(1, 1, 80, 25);
                  Textbackground(0);
                  Textcolor(7);
                  EfC3;
                  cursoroff;
                  clrscr;
             end;

procedure Song1;
             begin
                  cursoroff;
                  gotoxy(3, 2); twTMP:=('Œë ¢®¨­ë á¢¥â  ¨ ¢®¨­ë ¤®¡à !'); TypeWriter2; delay(100);
                  gotoxy(3, 3); twTMP:=(' è  £« ¢­ ï æ¥«ì ¨ ­ è  ¬¥çâ  - '); TypeWriter2; gotoxy(3, 33); delay(400); twTMP:=('®áá¨ï! '); TypeWriter2; delay(700); gotoxy(3, 41); twTMP:=('®áá¨ï!'); TypeWriter2; delay(100);
                  gotoxy(3, 4); twTMP:=('—â® ¡ë á¨«ì­®© âë ¡ë«  ¨ ¢á¥¬ áç áâì¥ ¤ « !'); TypeWriter2; delay(100);
                  gotoxy(3, 6); twTMP:=('Œë ¢®¨­ë ¬¥â « , Œë ã¡¨©æë ¢á¥© ¯®¯áë!'); TypeWriter2; delay(100);
                  gotoxy(3, 7); twTMP:=('Šà á®â®î ¯®ª®à¥­ â¢®¥© áà¥¤­¥© ¯®«®áë - '); TypeWriter2; gotoxy(3, 40); delay(400); twTMP:=('®áá¨ï! '); TypeWriter2; delay(700); gotoxy(3, 48); twTMP:=('®áá¨ï!'); TypeWriter2; delay(100);
                  gotoxy(3, 8); twTMP:=('‡  â¥¡ï £®â®¢ ¯®à¢ âì á¢®î § ¤­¨æã ï-ï-ï'); TypeWriter2; delay(100);
                  gotoxy(3, 9); twTMP:=('®áá¨-¨-¨-¨-¨-ï-ï-ï-ï-ï!'); TypeWriter2; delay(500);
             end;

procedure Song2;
             begin
                  cursoroff;
                  gotoxy(3, 2); delay(400); twTMP:=('®áá¨ï!'); TypeWriter2; delay(600); gotoxy(11, 2); twTMP:=('®áá¨ï! '); TypeWriter2; delay(100); gotoxy(19, 2); twTMP:=('Ÿ «î¡«î â¥¡ï,'); TypeWriter2; delay(300);
                  gotoxy(3, 3); twTMP:=('’ë ¯à®áâ® ¡ã¤ì á® ¬­®©, âë ¡ã¤ì ¢á¥£¤ ...'); TypeWriter2; delay(700);
                  gotoxy(3, 6); delay(400); twTMP:=('®áá¨ï!'); TypeWriter2; delay(600); gotoxy(11, 6); twTMP:=('®áá¨ï! '); TypeWriter2; delay(100); gotoxy(19, 6); twTMP:=('Ÿ â ª â¥¡ï «î¡«î,'); TypeWriter2; delay(800);
                  gotoxy(3, 7); twTMP:=('‘å®¤¨ á® ¬­®© ¢ ª¨­® â¥¡ï ¬®«î...'); TypeWriter2; delay(800);
                  gotoxy(3, 8); twTMP:=('®áá-¨-¨-¨-¨-¨-¨-¨-¨-¨-¨-ï-ï!'); TypeWriter2; delay(100);
             end;

procedure Captcha;
             var
                  v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12 : string;
                  i : integer;
                  T,B,L,R : integer;

             begin
                  Randomize;
                  v1:='Df3S5212'; v2:='ddS23S4j';  v3:='A246d23';  v4:='Sd3f3425';  v5:='Dhv8s7Cz';  v6:='Ad23d790';
                  v7:='OOsd1ad3'; v8:='Df35Odsa';  v9:='sdD20S5d'; v10:='aSd05gDF'; v11:='SD12dD84'; v12:='S5S5S10O';
                  i:=Random(11);
                  case i of
                       0  : OutCaptcha:= v1;
                       1  : OutCaptcha:= v2;
                       2  : OutCaptcha:= v3;
                       3  : OutCaptcha:= v4;
                       4  : OutCaptcha:= v5;
                       5  : OutCaptcha:= v6;
                       6  : OutCaptcha:= v7;
                       7  : OutCaptcha:= v8;
                       8  : OutCaptcha:= v9;
                       9  : OutCaptcha:=v10;
                       10 : OutCaptcha:=v11;
                       11 : OutCaptcha:=v12;
                  end;

                  gotoxy(30, 9); Write(#218);
                  gotoxy(50, 9); Write(#191);
                  gotoxy(30, 15); Write(#192);
                  gotoxy(50, 15); Write(#217);

                  gotoxy(30, 10); Write(#179);
                  gotoxy(30, 11); Write(#179);
                  gotoxy(30, 12); Write(#179);
                  gotoxy(30, 13); Write(#179);
                  gotoxy(30, 14); Write(#179);

                  gotoxy(50, 10); Write(#179);
                  gotoxy(50, 11); Write(#179);
                  gotoxy(50, 12); Write(#179);
                  gotoxy(50, 13); Write(#179);
                  gotoxy(50, 14); Write(#179);

                  for T:= 31 to 49 do begin
                  gotoxy(T, 9); Write(#196);
                  end;

                  for B:= 31 to 49 do begin
                  gotoxy(B, 15); Write(#196);
                  end;

                  gotoxy(7,2);Write('vk.com - á®¢à¥¬¥­­ë©, ¡ëáâàë© ¨ íáâ¥â¨ç­ë© á¯®á®¡ ®¡é¥­¨ï ¢ á¥â¨!');
                  gotoxy(33,10);Write('‡ ¯®¬­¨â¥ ª ¯çã: ');
                  gotoxy(35,14);Write('Žáâ «®áì: 9');
                  gotoxy(31,24);Write(' ¢¥« „ãà®¢ 2016');

                  GoToXY((Lo(WindMax)-Length(OutCaptcha)) div 2, Hi(WindMax) div 2);
                  Write(#17 + ' ' + OutCaptcha + ' ' + #16);

             end;

procedure CaptchaCheck;
             var
                  T,B : integer;

             begin
                  clrscr;
                  gotoxy(30, 9); Write(#218);
                  gotoxy(50, 9); Write(#191);
                  gotoxy(30, 15); Write(#192);
                  gotoxy(50, 15); Write(#217);

                  gotoxy(30, 10); Write(#179);
                  gotoxy(30, 11); Write(#179);
                  gotoxy(30, 12); Write(#179);
                  gotoxy(30, 13); Write(#179);
                  gotoxy(30, 14); Write(#179);

                  gotoxy(50, 10); Write(#179);
                  gotoxy(50, 11); Write(#179);
                  gotoxy(50, 12); Write(#179);
                  gotoxy(50, 13); Write(#179);
                  gotoxy(50, 14); Write(#179);

                  for T:= 31 to 49 do begin
                  gotoxy(T, 9); Write(#196);
                  end;

                  for B:= 31 to 49 do begin
                  gotoxy(B, 15); Write(#196);
                  end;

                  gotoxy(7,2);Write('vk.com - á®¢à¥¬¥­­ë©, ¡ëáâàë© ¨ íáâ¥â¨ç­ë© á¯®á®¡ ®¡é¥­¨ï ¢ á¥â¨!');
                  gotoxy(34,10);Write('‚¢¥¤¨â¥ ª ¯çã: ');
                  gotoxy(31,24);Write(' ¢¥« „ãà®¢ 2016');
                  gotoxy(37,12); cursoron; Readln(BossCheck); cursoroff;

             end;

procedure bTimer;
             begin
                  while (bossTimer <> 0) do
                  begin
                  bossTimer:=bossTimer-1;
                  delay(999);
                  gotoxy(45,14); write(bosstimer);
                  end;
             end;

begin
     commodore64;

     LoadingBar;

     cursoroff;
     clrscr;
     twTMP:=('Kazakhstan Technologies ¯à¥¤áâ ¢«ï¥â: ');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('A Nursultan Tyulyakbaev Game: ');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(4000);
     clrscr;

     newgame:
     subs:=120;
     Window(1, 1, 80, 25);
     Textbackground(0);
     Textcolor(7);
     cursoroff;
     clrscr;

     cursoroff;
     textcolor(2);

     gotoxy(27,1); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);
     gotoxy(27,2); write(#219,#196,#196,#196,#219,#196,#196,#196,#219,#196,#219,#219,#219,#196,#219,#196,#196,#196,#196,#219,#196,#219,#219,#196,#219);
     gotoxy(27,3); write(#219,#196,#219,#219,#219,#219,#196,#219,#219,#196,#196,#219,#196,#196,#219,#196,#219,#219,#196,#219,#196,#196,#219,#196,#219);
     gotoxy(27,4); write(#219,#196,#196,#196,#219,#219,#196,#219,#219,#196,#219,#196,#219,#196,#219,#196,#219,#219,#196,#219,#196,#219,#196,#196,#219);
     gotoxy(27,5); write(#219,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#219,#196,#219,#196,#219,#219,#196,#219,#196,#219,#219,#196,#219);
     gotoxy(27,6); write(#219,#196,#196,#196,#219,#196,#196,#196,#219,#196,#219,#219,#219,#196,#219,#196,#196,#196,#196,#219,#196,#219,#219,#196,#219);
     gotoxy(27,7); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);
     gotoxy(27,8); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);

     gotoxy(19,9); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);
     gotoxy(19,10); write(#219,#196,#196,#196,#219,#196,#196,#196,#219,#196,#219,#219,#219,#196,#219,#196,#219,#196,#219,#196,#219,#219,#219,#196,#196,#196,#196,#219,#196,#196,#196,#219,#196,#196,#196,#196,#219,#196,#196,#196,#196,#219);
     gotoxy(19,11); write(#219,#196,#219,#219,#219,#219,#196,#219,#219,#196,#196,#219,#196,#196,#219,#196,#219,#196,#219,#196,#219,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#196,#219,#219,#196,#219);
     gotoxy(19,12); write(#219,#196,#196,#196,#219,#219,#196,#219,#219,#196,#219,#196,#219,#196,#219,#196,#219,#196,#219,#196,#219,#219,#219,#196,#196,#196,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#196,#196,#196,#196,#219);
     gotoxy(19,13); write(#219,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#219,#196,#219,#196,#219,#196,#219,#196,#219,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#196,#219,#196,#219,#219);
     gotoxy(19,14); write(#219,#196,#196,#196,#219,#196,#196,#196,#219,#196,#219,#219,#219,#196,#219,#196,#196,#196,#219,#196,#196,#196,#219,#196,#219,#219,#196,#219,#219,#196,#219,#219,#196,#196,#196,#196,#219,#196,#219,#196,#219,#219);
     gotoxy(19,15); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);

     gotoxy(30,16); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);
     gotoxy(30,17); write(#219,#196,#196,#196,#196,#219,#196,#196,#196,#196,#219,#219,#196,#219,#196,#196,#196,#196,#219);
     gotoxy(30,18); write(#219,#196,#219,#219,#196,#219,#196,#219,#219,#196,#219,#196,#196,#219,#196,#219,#219,#219,#219);
     gotoxy(30,19); write(#219,#219,#219,#196,#196,#219,#196,#219,#219,#196,#219,#219,#196,#219,#196,#196,#196,#196,#219);
     gotoxy(30,20); write(#219,#196,#196,#219,#219,#219,#196,#219,#219,#196,#219,#219,#196,#219,#196,#219,#219,#196,#219);
     gotoxy(30,21); write(#219,#196,#196,#196,#196,#219,#196,#196,#196,#196,#219,#219,#196,#219,#196,#196,#196,#196,#219);
     gotoxy(30,22); write(#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219,#219);

     textcolor(7);

     Delay(3000);
     if keypressed then
                  begin
                       gotoxy(27,24);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       Readln;

                  end
                                else
                  begin
                       gotoxy(27,24);
                       Write('Enter ¤«ï ¯à®¤®«¦¥­¨ï...');
                       Readln;
                  end;
// Episode 1

     cursoroff;
     clrscr;
     twTMP:=('A Nursultan Tyulyakbaev Game');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('Simon Simulator 2016');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('¯¨§®¤ 1: “âà®');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     Song1;
     EfC2;

     gotoxy(3, 11); write('.'); delay(500); gotoxy(4, 11); write('.'); delay(500); gotoxy(5, 11); write('.'); delay(200);
     gotoxy(3, 12); write('.'); delay(500); gotoxy(4, 12); write('.'); delay(500); gotoxy(5, 12); write('.'); delay(200);
     gotoxy(3, 14); twTMP:=('‚ë ®âªàë¢ ¥â¥ £« §  ¨ ¢ëª«îç ¥â¥ ¡ã¤¨«ì­¨ª.'); TypeWriter; delay(500);
     EfC;

     Refresh;
     gotoxy(3, 2); twTMP:=('‚ á §®¢ãâ ‘ ©¬®­. ‚ë ¤ «ì­¥¢®áâ®ç­ë© å ª¥à ¢ ®âáâ ¢ª¥. ‚ë à ­® ­ ç «¨ á¢®î ' + slb + 'ª àì¥àã - á¢®© ¯¥à¢ë© áâ¨««¥à ¢ë ­ ¯¨á «¨ ¢ 10 «¥â. ‡  ¢à¥¬ï ¢ è¥£® ' + slb + 'áâ ­®¢«¥­¨ï ¢ë áâ «¨ ®ç¥­ì ¨§¢¥áâ­ë ¢  ­¤¥£à ã­¤­ëå å ª¥àáª¨© âãá®¢ª å. ' + slb + slb + '‚ë - ª ª ¨ «î¡®© ¤àã£®©  ¤¥ª¢ â­ë© å ª¥à - ¯ à ­®¨ª, ¨ ®¡¥á¯¥ç¨¢ ¥â¥ á¢®î ' + slb + ' ­®­¨¬­®áâì ¢ á¥â¨ «î¡ë¬¨ ¢®§¬®¦­ë¬¨ ¬¥â®¤ ¬¨. ˆ¬¥­­® ¯® íâ®© ¯à¨ç¨­¥ ¢ë ' + slb + 'áâ «¨ íà¤¦¥¥¬ ­  ¨­â¥à­¥â à ¤¨® ¨ ¢ë«®¦¨«¨ á¢®î ä®â®£à ä¨î ¢ ®âªàëâë© ¤®áâã¯,' + slb + 'çâ® â ª ¦¥ á¢¨¤¥â¥«ìáâ¢ã¥â ®¡ ®âáãâáâ¢¨¨ ã ¢ á ¯à®¡«¥¬ á «®£¨ª®©. ‚ ¤ ­­ë©' + slb + '¬®¬¥­â ¢ë ¯¥àá¯¥ªâ¨¢­ë© open-source à §à ¡®âç¨ª, ¯à¨«¥¦­ë© áâã¤¥­â ¨ æ¥­­ë©' + slb + 'á®âàã¤­¨ª - ¢ å®§ï©áâ¢¥ ¯®«¥§¥­, ¢ íª®­®¬¨ª¥, â ª áª § âì, ­¥®¡å®¤¨¬...'); TypeWriter;
     EfC;

     Refresh;
     gotoxy(3, 2); twTMP:=('‘¥£®¤­ï ã ¢ á ­¥ ¯à®áâ®© ¤¥­ì. ‘¥£®¤­ï ¢ë ¤®«¦­ë ¢ë©â¨ ¢ íä¨à ­  ¢ è¥¬ ' + slb + '«î¡¨¬®¬ ¨­â¥à­¥â à ¤¨® - Mad FM. “¦¥ ª ª®¥-â® ¢à¥¬ï ¢ë ¢¥é ¥â¥ ­  ' + slb + 'íâ®© ¯«®é ¤ª¥ ¨ á¬®£«¨ ®¡à áâ¨ ª ª®©-­¨ª ª®© ¯®¯ã«ïà­®áâìî - áä®à¬¨à®¢ âì ' + slb + '¢®ªàã£ á¥¡ï ¯®áâ®ï­­ãî  ã¤¨â®à¨î. Ž­  ¯à¥¤áâ ¢«ï¥â á®¡®© âà¨ á ¯®«®¢¨­®© ' + slb + 'ç¥«®¢¥ª , 50% ¨§ ª®â®àëå á«ãè îâ Mad FM ªàã£«®áãâ®ç­®...'); TypeWriter;
     EfC2;
     gotoxy(3, 8); twTMP:=('‚ë ®ç¥­ì âà¥¯¥â­® ¯®¤å®¤¨â¥ ª ¯à®æ¥ááã ¯®¤£®â®¢ª¨ ª íä¨à ¬, ­ áâ®«ìª® ' + slb + 'âà¥¯¥â­®, çâ® ¤® á ¬®© ¯®¤£®â®¢ª¨ â ª ­¨ª®£¤  ¤¥«® ¨ ­¥ ¤®å®¤¨«®. ' + slb + '—â® ­¥ ã¤¨¢¨â¥«ì­®, ¢¥¤ì ¥á«¨ ¡ë ¢ë å «âãà­® ª íâ®¬ã ®â­®á¨«¨áì, ' + slb + '¢ á ¡ë ã¦¥ ¤ ¢­ë¬-¤ ¢­® ¢ë£­ «¨ á à ¤¨® ¨ ¢ ¬ ¡ë ¯à¨è«®áì áâà¨¬¨âì ' + slb + 'Cisco Packet Tracer ­  â¢¨ç¥.'); TypeWriter;
     EfC;

     Refresh;
     gotoxy(3, 2); twTMP:=('’ ª çâ® ¤  - ¢ë ¯®«­®áâìî ®á®§­ ñâ¥ ¢áî ®â¢¥âáâ¢¥­­®áâì, ª®â®àãî ¢ë ' + slb + '¢§£à®¬®§¤¨«¨ ­  á¢®¨ åàã¯ª¨¥ ¤ «ì­¥¢®áâ®ç­ë¥ ¯«¥ç¨ ¨ £®â®¢ë ª âàã¤­®áâï¬ ' + slb + 'á¥£®¤­ïè­¥£® ¤­ï...'); TypeWriter;
     EfC2;
     gotoxy(3, 6); twTMP:=('®á«¥ ¯à®¢¥¤¥­¨ï ¢á¥å ãâà¥­­¨å à¨âã «®¢ ¢ë, ª ª ¨ ®¡ëç­®, ' + slb + 'á ¤¨â¥áì §  ª®¬¯ìîâ¥à...'); TypeWriter;
     EfC;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('‚ë ¬ è¨­ «ì­® ®âªàë¢ ¥â¥ â¥à¬¨­ « ¨ à¥è ¥â¥ çâ®-­¨¡ã¤ì ­ ¯¨á âì.'); TypeWriter;
           gotoxy(3, 17); Write('—â® ¦¥ íâ® ¡ã¤¥â: ');
           gotoxy(3, 19); Write('1. [simon@debian ~]$ sudo rm -rf /');
           gotoxy(3, 20); Write('2. [simon@debian ~]$ sudo apt-get update && sudo apt-get upgrade');
           gotoxy(3, 21); Write('3. [simon@debian ~]$ history');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); Textcolor(4); twTMP:=('Game Over: '); TypeWriter; Textcolor(7); gotoxy(14, 2); twTMP:=('‚ë á«ãç ©­® ­ ¡à «¨ ­  ª« ¢¨ âãà¥ "sudo rm -rf /" § â¥¬' + slb + 'á«ãç ©­® ­ ¦ «¨ ­  Enter § â¥¬ á«ãç ©­® ¢¢¥«¨ ¯ à®«ì ¨ § â¥¬ á­®¢  á«ãç ©­®' + slb + '­ ¦ «¨ ­  Enter. ä¨à ®â¬¥­ï¥âáï. ‚ á«¥¤ãîé¨© à § ¡ã¤ìâ¥ ¢­¨¬ â¥«ì­¥¥!'); TypeWriter;
                   EfC;
                   goto newgame;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­ ¡¨à ¥â¥ íâã ª®¬ ­¤ã ª ¦¤ë© ¤¥­ì ¯à®áâ® ª ª à¨âã «, á«®¢® "®¡­®¢«¥­¨ï" ' + slb + 'ã¦¥ ¤ ¢­® áâ «® á¢®¥®¡à §­ë¬ ¬¥¬®¬ ¤«ï ¢ è¥£® ¤¨áâà¨¡ãâ¨¢ , ¢ á § ¡ ¢«ï¥â ' + slb + '¨§® ¤­ï ¢ ¤¥­ì ¢¢®¤¨âì íâã ª®¬ ­¤ã ¢ æ¥«ïå ª ª®©-â® ¡¥§ã¬­®©, ' + slb + '¯®­ïâ­®© «¨èì ¢ ¬, á ¬®¨à®­¨¨. ‚ë ã¦¥ ¤ ¦¥ ­¥ ­ ¤¥¥â¥áì ­  ª ª¨¥-«¨¡® ' + slb + 'á®¡ëâ¨ï, ­® ¢ë áà §ã ¯®­¨¬ ¥â¥, çâ® á¥£®¤­ï - ®á®¡¥­­ë© ¤¥­ì...'); TypeWriter;
                   EfC;

                   Refresh;
                   gotoxy(3, 2);  write('[simon@debian ~]$ sudo apt-get update && sudo apt-get upgrade'); delay(100);
                   gotoxy(3, 4);  write('—â¥­¨¥ á¯¨áª®¢ ¯ ª¥â®¢... '); delay(1000); gotoxy(3, 30);  write('ƒ®â®¢®'); delay(100);
                   gotoxy(3, 5);  write('®áâà®¥­¨¥ ¤¥à¥¢  § ¢¨á¨¬®áâ¥©'); delay(1000);
                   gotoxy(3, 6);  write('—â¥­¨¥ ¨­ä®à¬ æ¨¨ ® á®áâ®ï­¨¨... '); delay(1000); gotoxy(3, 30);  write('ƒ®â®¢®'); delay(100);
                   gotoxy(3, 7);  write(' áçñâ ®¡­®¢«¥­¨©... '); delay(1000); gotoxy(3, 30);  write('ƒ®â®¢®'); delay(100);
                   gotoxy(3, 8);  write(' ª¥âë, ª®â®àë¥ ¡ã¤ãâ ®¡­®¢«¥­ë: ');
                   gotoxy(3, 9);  write('        mate-wallpapers');
                   gotoxy(3, 10);  write('Ž¡­®¢«¥­® 1, ãáâ ­®¢«¥­® 0 ­®¢ëå ¯ ª¥â®¢, ¤«ï ã¤ «¥­¨ï ®â¬¥ç¥­® 0 ¯ ª¥â®¢,' + slb + '¨ 0 ¯ ª¥â®¢ ­¥ ®¡­®¢«¥­®.'); delay(100);
                   gotoxy(3, 11);  write('¥®¡å®¤¨¬® áª ç âì 120 k  àå¨¢®¢.'); delay(100);
                   gotoxy(3, 12);  write('Ž¡êñ¬ § ­ïâ®£® ¤¨áª®¢®£® ¯à®áâà ­áâ¢  ¢®§à áâñâ ­  678 kB.'); delay(100);
                   gotoxy(3, 17); Write('•®â¨â¥ ¯à®¤®«¦¨âì? ');
                             gotoxy(3, 19); Write('1. ¥ áâ®¨â à¨áª®¢ âì...');
                             gotoxy(3, 20); Write('2. ¥ áâ®¨â à¨áª®¢ âì...');
                             gotoxy(3, 21); Write('3. ¥ áâ®¨â à¨áª®¢ âì...');
                             gotoxy(3, 22); cursoron; Readln; cursoroff;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('Š ª ¨ ¢á¥ «î¤¨, ª®â®àë¥ á¨¤ïâ ­  Debian ¤¨áâà¨¡ãâ¨¢¥ ¨§ stable ¢¥âª¨,' + slb + '¢ë - ¯ ­¨ç¥áª¨ ¡®¨â¥áì ®¡­®¢«¥­¨©. Ž¯à ¢¤ë¢ ïáì â¥¬, çâ® á¥£®¤­ï ¢ë ¤®«¦­ë' + slb + '¢ë©â¨ ¢ íä¨à ¨ ¢ ¬ ­¥«ì§ï à¨áª®¢ âì, ¢ë ®âª §ë¢ ¥â¥áì ®â ®¡­®¢«¥­¨ï...'); TypeWriter;
                   EfC2;
                   gotoxy(3, 6); twTMP:=('â® á®¡ëâ¨¥ è®ª¨à®¢ «® ¨ ¢ë¡¨«® ¢ á ¨§ ª®«¥¨. ' + slb + '‚ë ¯à®á¨¤¥«¨ ¢ ®æ¥¯¥­¥­¨¨ ¡®«ìè¥ ç á , ¢ë á®¢á¥¬ § ¡ë«¨,' + slb + 'çâ® ¢ë ã¦¥ ¯à¨«¨ç­® ®¯ §¤ë¢ ¥â¥ ­  § ­ïâ¨ï. ®à  á®¡¨à âìáï...'); TypeWriter;
                   EfC;

              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2);  write('[simon@debian ~]$ history'); delay(50);
                   gotoxy(3, 4);  write('1 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 5);  write('2 iceweasel ru.wikipedia.org/wiki/‹¥ç¥­¨¥_­¨ª®â¨­®¢®©_§ ¢¨á¨¬®áâ¨'); delay(50);
                   gotoxy(3, 6);  write('3 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 7);  write('4 iceweasel forum.antichat.ru'); delay(50);
                   gotoxy(3, 8);  write('5 iceweasel ialive.ru/privychki/kurenie/nikotinovaya-lomka.html'); delay(50);
                   gotoxy(3, 9);  write('6 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 10); write('7 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 11); write('8 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 12); write('9 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 13); write('10 iceweasel 4pda.ru'); delay(50);
                   gotoxy(3, 14); write('11 iceweasel securitylab.ru'); delay(50);
                   gotoxy(3, 15); write('12 sudo -s'); delay(50);
                   gotoxy(3, 16); write('13 echo "127.0.0.1 www.securitylab.ru" >> /etc/hosts && exit'); delay(50);
                   gotoxy(3, 17); write('14 iceweasel stoplinux.org.ru'); delay(50);
                   gotoxy(3, 18); write('15 iceweasel microsoft.com/ru-ru/windows/windows-10-upgrade'); delay(500);
                   EfC;

                   Refresh;
                   gotoxy(3, 2); twTMP:=('à®á¬®âà¥¢ á¢®ñ ¡ãà­®¥ ¯à®è«®¥, ¢ë à¥è ¥â¥, çâ® ¯®à  ¨¤â¨ ' + slb + '­  ¯ àë - ¯àï¬¨ª®¬ ¢ ã­ë«®¥ ­ áâ®ïé¥¥...'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

// Episode 2

     cursoroff;
     clrscr;
     twTMP:=('A Nursultan Tyulyakbaev Game');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('Simon Simulator 2016');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('¯¨§®¤ 2: “çñ¡ ');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     Refresh;
     gotoxy(3, 2); twTMP:=('Š ª â®«ìª® ¢ë ¢®è«¨ ¢  ã¤¨â®à¨î, ¢á¥ ¯à¨áãâáâ¢ãîé¨¥ áâ «¨ ®â¢®à ç¨¢ âìáï' + slb + '®â ¢ á. â® ­ ç «® ¯à®¨áå®¤¨âì ¯®á«¥ â®£®, ª ª ¢ë à ááª § «¨ á¢®¨¬' + slb + '®¤­®£àã¯¯­¨ª ¬, çâ® ¢¥é ¥â¥ ­  ¨­â¥à­¥â à ¤¨®...'); TypeWriter;
     EfC;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  ¯ à å ã ¢ á § ¢ï§ «áï à §£®¢®à á ¢ è¨¬ ¯à¥¯®¤ ¢ â¥«¥¬. ' + slb + 'Ž­  ãâ¢¥à¦¤ ¥â, çâ® ¬¥¦¤ã ï§ëª ¬¨ ¯à®£à ¬¬¨à®¢ ­¨ï B, C ¨ D ­¥â ' + slb + '­¨ª ª®© à §­¨æë.'); TypeWriter;

           gotoxy(3, 17); Write('‚ è¨ ¤¥©áâ¢¨ï: ');
           gotoxy(3, 19); Write('1. à®¬®«ç âì.');
           gotoxy(3, 20); Write('2. ‘®£« á¨âìáï.');
           gotoxy(3, 21); Write('3. ‚®§à §¨âì ¥©!');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('’®, çâ® ¢ë â ª «î¡¨â¥ á¬¥è¨¢ îâ á £àï§ìî â®â «ì­®© ­¥ª®¬¯¥â¥­â­®áâìî,' + slb + '  ¢ë ¯à®áâ® ¬®«ç¨â¥ ¨, ¯®¤¦ ¢ å¢®áâ, ãå®¤¨â¥ ¤®¬®©. ' + slb + ' ¤¥îáì ¢ë ¤®¢®«ì­ë á®¡®©.'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ è¥¬ã ¯à¥¯®¤ ¢ â¥«î ®ç¥­ì ¯®­à ¢¨«®áì â®, çâ® ¢ë á®£« á¨«¨áì á ­¥©.' + slb + '‚®®¡é¥ £®¢®àï, ã¡®àé¨æ¥ ¢ è¥£® ã­¨¢¥àá¨â¥â  ¢á¥£¤  ¡ë«® ®ç¥­ì ¯à¨ïâ­®, ' + slb + 'çâ® ¢ë ¯à¨­¨¬ «¨ ¥ñ §  á¢®î ãç¨â¥«ì­¨æã ¨ ¯à¨å®¤¨«¨ ª ­¥© ¢ ª« ¤®¢ªã ­  ¯ àë.'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   subs:=subs-1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­ ç «¨ ¡ë«® ç¨â âì «¥ªæ¨î, ­® ¢¤àã£ ¯®©¬ «¨ á¥¡ï ­  ¬ëá«¨, çâ® ­¥ ¯®¬­¨â¥' + slb + '¤ ¦¥ ¨¬¥­¨ á®§¤ â¥«ï ï§ëª  C. à¥¯®¤ ¢ â¥«ì à §®ç à®¢ ­ ¢ è¨¬¨ ' + slb + '§­ ­¨ï¬¨ ¨ ®â¯¨áë¢ ¥âáï ®â ¢ è¥© £àã¯¯ë ¢ ¢ª.'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

// Episode 3

     cursoroff;
     clrscr;
     twTMP:=('A Nursultan Tyulyakbaev Game');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('Simon Simulator 2016');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('¯¨§®¤ 3:  ¡®â ');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     Refresh;
     gotoxy(3, 2); twTMP:=('Š ª â®«ìª® ¢ë ¯à¨è«¨ ­  à ¡®âã - ¯¥à¢ë¬ ¦¥ ¤¥«®¬ ¢ë ®â¯à ¢¨«¨áì ¢ ' + slb + 'âã «¥â ¨ ãá­ã«¨ â ¬...'); TypeWriter;
     EfC2;
     gotoxy(3, 5); write('.'); delay(500); gotoxy(4, 5); write('.'); delay(500); gotoxy(5, 5); write('.'); delay(200);
     gotoxy(3, 6); write('.'); delay(500); gotoxy(4, 6); write('.'); delay(500); gotoxy(5, 6); write('.'); delay(200);
     gotoxy(3, 7); write('.'); delay(500); gotoxy(4, 7); write('.'); delay(500); gotoxy(5, 7); write('.'); delay(200);
     gotoxy(3, 9); twTMP:=(' ¡®ç¨© ¤¥­ì ®ª®­ç¥­, ¯®à  ®â¯à ¢«ïâìáï ¤®¬®©...'); TypeWriter;
     EfC;

// Episode 4

     cursoroff;
     clrscr;
     twTMP:=('A Nursultan Tyulyakbaev Game');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('Simon Simulator 2016');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('¯¨§®¤ 4: „®¬');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('‚ë ¯à¨å®¤¨â¥ ¤®¬®©, ¤® íä¨à  ¥éñ ®ª®«® ç¥âëàñå ç á®¢. —â®-¡ë áª®à®â âì ¢à¥¬ï' + slb + '¢ë à¥è ¥â¥ § ­ïâìáï ç¥¬-­¨¡ã¤ì ¯®«¥§­ë¬.'); TypeWriter;

           gotoxy(3, 17); Write('—â® íâ® ¡ã¤¥â? ');
           gotoxy(3, 19); Write('1. ®¤ª áâ.');
           gotoxy(3, 20); Write('2. xCloud.');
           gotoxy(3, 21); Write('3. ’ã «¥â.');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('¥®¦¨¤ ­­ë¥ ®¡áâ®ïâ¥«ìáâ¢  ¢áâ «¨ ­  ¢ è¥¬ ¯ãâ¨: ' + slb + '‚ ¬ áâ «® «¥­ì ¨ ¢ë ¯®è«¨ á¯ âì...'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ç¥à  ¢ë à¥è¨«¨ ¯¥à¥¯¨á âì ¯à®¥ªâ á ­ã«ï ¨ § ª®­ç¨«¨ à ¡®âã ­ ¤ áãé¥áâ¢¥­­ë¬' + slb + 'ªãáª®¬ ª®¤®¬, á¥£®¤­ï ¦¥ ¢ë à¥è¨«¨ ¢ëª¨­ãâì ¢áñ ­ åã© ¨ á­®¢  ¯¥à¥¯¨á âì ' + slb + '¯à®¥ªâ á ­ã«ï, íâ® § ©¬ñâ ­¥ª®â®à®¥ ¢à¥¬ï... '); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­¥ áâ «¨ ¢ë¯¥­¤à¨¢ âìáï ¨ ¯à®áâ® ¯®è«¨ ¢ á¯ «ì­î...'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     cursoroff;
     clrscr;
     twTMP:=('A Nursultan Tyulyakbaev Game');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('Simon Simulator 2016');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

     twTMP:=('¯¨§®¤ 5: ä¨à');
     GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
     TypeWriter;
     delay(3000);
     clrscr;

// Episode 5

     Song2;

     gotoxy(3, 9); write('.'); delay(500); gotoxy(4, 9); write('.'); delay(500); gotoxy(5, 9); write('.'); delay(200);
     gotoxy(3, 10); write('.'); delay(500); gotoxy(4, 10); write('.'); delay(500); gotoxy(5, 10); write('.'); delay(200);
     gotoxy(3, 12); twTMP:=('  ç á å 16:58 ¯® Œ®áª®¢áª®¬ã ¢à¥¬¥­¨.'); TypeWriter; delay(500);
     EfC;

     Refresh;
     gotoxy(3, 2); twTMP:=('  áâ¥­¥ ¯®ï¢¨«áï ¯¥à¢ë© ª®¬¬¥­â à¨© - "à¨¢¥â. ‘«¨é­ ". ' + slb + '‚ë â®ç­® §­ ¥â¥ çâ® ®§­ ç ¥â íâ®â ª®¬¬¥­â à¨© - á ¤ ­­®£® ¬®¬¥­â  íä¨à' + slb + '¯¨è¥âáï. ˆ â¥¯¥àì ã ¢ á ­¥â ¯à ¢  ­  ®è¨¡ªã.'); TypeWriter;

     if keypressed then
                  begin
                       gotoxy(3, 21);
                       Write('1. •®à®è®, ¬¥­ï á«ëè­®, á¥©ç á á¤¥« î ¬ã§ëªã ¯®â¨è¥...');
                       if twTimer = Length(twTMP) then while keypressed do readkey;
                       Readln;
                  end
                                else
                  begin
                       gotoxy(3, 21);
                       Write('1. •®à®è®, ¬¥­ï á«ëè­®, á¥©ç á á¤¥« î ¬ã§ëªã ¯®â¨è¥...');
                       gotoxy(3, 22); cursoron; Readln; cursoroff;
                  end;

     Window(3, 21, 60, 21);
     clrscr;
     Window(1, 1, 80, 24);

     gotoxy(3, 5); write('.'); delay(500); gotoxy(4, 5); write('.'); delay(500); gotoxy(5, 5); write('.'); delay(200);
     gotoxy(3, 6); write('.'); delay(500); gotoxy(4, 6); write('.'); delay(500); gotoxy(5, 6); write('.'); delay(200);

     gotoxy(3, 8); twTMP:=('Œã§ëª  áâ «  £à®¬ç¥...'); TypeWriter;
     Efc;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­¥ ­ ç «áï ¢ « ª®¬¬¥­â à¨¥¢..   ­¥â, ¢ ¬ ¯à®áâ® ¯®ª § «®áì.'); TypeWriter;
           gotoxy(3, 17); Write('Žâ¯à ¢¨âìáï ­  4pda? ');
           gotoxy(3, 19); Write('1. „ .');
           gotoxy(3, 20); Write('2. ¥â.');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   subs:=subs-subs;
                   Refresh;
                   gotoxy(3, 2); Textcolor(4); twTMP:=('Game Over: '); TypeWriter; Textcolor(7); gotoxy(14, 2); twTMP:=('‚ë á«¨èª®¬ à ­® ®â¯à ¢¨«¨áì ­  4pda, á«ãè â¥«¨ ­¥¤®¢®«ì­ë.'); TypeWriter;
                   EfC;

                   cursoroff;
                   clrscr;
                   twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Icon of Sin: ‡ ©â¨ ­  4PDA.');
                   GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
                   TypeWriter;
                   delay(3000);
                   clrscr;

                   goto newgame;

              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ¯à®¤®«¦ ¥â¥ íä¨à...'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­¥ ¯®ï¢¨«áï ¢®¯à®á ®â á«ãè â¥«ï: ' + slb + '"‘ ç¥£® ­ ç âì ¨§ãç âì ¯à®£à ¬¬¨à®¢ ­¨¥?"'); TypeWriter;

           gotoxy(3, 17); Write('Žâ¢¥â¨âì: ');
           gotoxy(3, 19); Write('1. ®á®¢¥â®¢ âì á¯¥æ¨ «¨§¨à®¢ ­­ãî «¨â¥à âãàã...');
           gotoxy(3, 20); Write('2. Žâ¯ãáâ¨âì âã¯ãî èãâªã ¯à® £®áã¤ àáâ¢® ¯« â®­ ...');
           gotoxy(3, 21); Write('3.  ááª § âì ¯à® á¢®© ¬¥â®¤ ¨§ãç¥­¨ï ï§ëª®¢...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   subs:=subs-1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­¥ §­ ¥â¥ ­¨ª ª®© á¯¥æ¨ «¨§¨à®¢ ­­®© «¨â¥à âãàë, ¯® íâ®¬ã ¢ë à¥è¨«¨ ' + slb + '¯®èãâ¨âì ¯à® £®áã¤ àáâ¢® ¯« â®­ .'); TypeWriter;
                   EfC2;
                   gotoxy(3, 5); twTMP:=('Ž¤­®£® ¨§ ¢ è¨å ¯®¤¯¨áç¨ª®¢ íâ®â ¬¥¬ § ¥¡ « ­ áâ®«ìª® á¨«ì­®, ' + slb + 'çâ® ®­ ®â¯¨á «áï ®â £àã¯¯ë.'); TypeWriter;
                   EfC;
                   subs:=subs-1; Window(3, 23, 20, 23); clrscr; Window(1, 1, 80, 24);
              end
           else if ABC='2'
              then begin
                   subs:=subs-1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('Ž¤­®£® ¨§ ¢ è¨å ¯®¤¯¨áç¨ª®¢ íâ®â ¬¥¬ § ¥¡ « ­ áâ®«ìª® á¨«ì­®, ' + slb + 'çâ® ®­ ®â¯¨á «áï ®â £àã¯¯ë.'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2);  write('1) Ž¯à¥¤¥«ï¥¬áï á ï§ëª®¬'); delay(500);
                   gotoxy(3, 3);  write('2) ˆ§ãç ¥¬ á¨­â ªá¨á'); delay(500);
                   gotoxy(3, 4);  write('3) ‘â ¢¨¬ æ¥«ì, ¯®«ì§ã¥¬áï google ¤«ï ¤®áâ¨¦¥­¨ï æ¥«¨'); delay(500);
                   gotoxy(3, 5);  write('4) ˆ§ãç ¥¬ äã­ªæ¨¨'); delay(500);
                   gotoxy(3, 6);  write('5)  áè¨àï¥¬ § ¤ ç¨ ¨ ã£«ã¡«ï¥¬áï ¢ ¨§ãç¥­¨¥ ï§ëª '); delay(500);
                   EfC2;
                   gotoxy(3, 8); twTMP:=('•®âï ¢ë ®¡ íâ®¬ ¨ ­¥ ¯®¤®§à¥¢ «¨, ­® ®¤¨­ ¨§ ¢ è¨å á«ãè â¥«¥© ®á®¡¥­­® ' + slb + 'á¨«ì­® § ®áâà¨« ¢­¨¬ ­¨¥ ­  âà¥âì¥¬ ¯ã­ªâ¥ íâ®£® á¯¨áª . Œ®£«¨ ¡ë ¢ë á¥¡¥ ' + slb + '¯à¥¤áâ ¢¨âì, çâ® ç¥à¥§ ª ª®¥-â® ¢à¥¬ï íâ® ¢ë«ì¥âáï ¢ æ¥«ãî ¨£àã ® ¢ è¥© ' + slb + 'áªà®¬­®© ¯¥àá®­¥?'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­¥ ¯®ï¢¨«áï ¢®¯à®á ®â á«ãè â¥«ï, ª®â®àë© áâà ¤ ¥â ®â ' + slb + 'à¥¤ª®© ¡®«¥§­¨ - ¥£® ®¯¥à æ¨®­­ ï á¨áâ¥¬  ­¥ ¯®¤¤¥à¦¨¢ ¥â ssl. ' + slb + '‚ ¯« ­¥ ãáâ à¥«®£® á®äâ  ®­ ã¬ã¤à¨«áï ¯¥à¥¯«î­ãâì ¤ ¦¥ ¢ á,' + slb + '¢ á¢ï§¨ á ç¥¬ ¢áñ ¢ è¥ ­ãâà® ¯à®¯¨âë¢ ¥âáï £«ã¡®ª¨¬ çã¢áâ¢®¬ ã¢ ¦¥­¨ï ' + slb + 'ª íâ®¬ã ç¥«®¢¥ªã.'); TypeWriter;

           gotoxy(3, 17); Write('Žâ¢¥â¨âì: ');
           gotoxy(3, 19); Write('1. Ž¡êïá­¨âì ¢ çñ¬ ¯à®¡«¥¬ ...');
           gotoxy(3, 20); Write('2. ‚ 5-© à § áª § âì ® â®¬, çâ® ¢ë §­ ¥â¥ à¥ «ì­®¥ ¨¬ï íâ®£® á«ãè â¥«ï...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë à¥è¨«¨ ¯à®¡«¥¬ã á«ãè â¥«ï, ­® ®­ ­¥ ¯®¤¯¨á «áï ­  ¢ èã £àã¯¯ã ' + slb + '¯®â®¬ã çâ® ¢ë ¢ë¡à «¨ ­¥¯à ¢¨«ì­ë© ¢ à¨ ­â.'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   subs:=subs+1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‘«ãè â¥«ì ¡ë« ­ áâ®«ìª® ã¤¨¢«ñ­ ¢ è¥© ®á®¡®© å ª¥àáª®© ¬ £¨¨,' + slb + 'çâ® ¯®¤¯¨á «áï ­  ¢ èã £àã¯¯ã. '); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­¥ ¯®ï¢¨«áï ª ª®©-â® ¯à¥áâ à¥«ë© ª § å. ‚ë §­ ¥â¥ íâ®£® ç¥«®¢¥ª  ã¦¥' + slb + '®â­®á¨â¥«ì­® ¤ ¢­®. ‚ â ©­¥ ¢ë ­¥­ ¢¨¤¨â¥ ¥£®, ¢¥¤ì ¯à¨ ª ¦¤®¬ ã¤®¡­®¬ ' + slb + 'á«ãç ¥ ®­ ¯ëâ ¥âáï ¢ á ¯®¤ê¥¡ âì. ˆ ¢®â ®¯ïâì - ®­ ¯à¨è¥« ­  áâ¥­ã ¨ ' + slb + '®áª®à¡«ï¥â ¢ è «î¡¨¬ë© «¨­ãªá ¤¨áâà¨¡ãâ¨¢.'); TypeWriter;

           gotoxy(3, 17); Write('—â® ¢ë ­ ¬¥à¥­ë ¤¥« âì? ');
           gotoxy(3, 19); Write('1.  ááª § âì ® áâ ¡¨«ì­®áâ¨ ¤¥¡¨ ­ ...');
           gotoxy(3, 20); Write('2. ®á« âì ¥£® ­ åã©...');
           gotoxy(3, 21); Write('3. ‘®£« á¨âìáï. ‡ ©â¨ ­  archlinux.org ¨ áª ç âì ­®à¬ «ì­ë© ¤¨áâà¨¡ãâ¨¢...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­ ç¨­ ¥â¥ à á¯¨áë¢ âì ­ áª®«ìª® áâ à ¨ ¯¥¤ ­â¨ç¥­ ¢ è ¤¨áâà¨¡ãâ¨¢,' + slb + 'à ááª §ë¢ ¥â¥ ¯à® ®£à®¬­®¥ ª®««¨ç¥áâ¢® á¥à¢¥à­ëå ¬ è¨­ ­  ª®â®àëå ' + slb + '®­ à ¡®â ¥â, ®¡êïá­ï¥â¥ çâ® á¥¬¥©áâ¢ã ¤¥¡¨ ­-based ¤¨áâà¨¡ãâ¨¢®¢ ­¥â à ¢­ëå ' + slb + '¯® à §¬¥à ¬.. ® ª § å ­¥ ã­¨¬ ¥âáï, ®­ § ï¢«ï¥â, çâ® ­  ¢ è¥¬ ¤¨áâà¨¡ãâ¨¢¥ ' + slb + 'á«¨èª®¬ áâ à®¥ ¯à®£à ¬¬­®¥ ®¡¥á¯¥ç¥­¨¥ ¨ ¢ ª ç¥áâ¢¥ ¤®ª § â¥«ìáâ¢ ' + slb + 'á¢®¨å á«®¢ ®­ ª¨¤ ¥â ­  áâ¥­ã ª àâ¨­ª¨ á ¬¥¬ ¬¨...'); TypeWriter;
                   EfC;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ¡¥§ã¬­® ãáâ «¨ ®â ¢á¥£® íâ®£®. ‚ë ¢§ï«¨ ¢áî á¢®î ¢®«î ¢ ªã« ª... ' + slb + '‚ë ¯®çã¢áâ¢®¢ «¨ ª®«®áá «ì­ë© ¯à¨«¨¢ á¨«. ‚ ¬ ª ¦¥âáï, çâ® ¢ è ­ ¢ëª ' + slb + 'ªà á­®à¥ç¨ï ¢®§¢ëá¨«áï ­ áâ®«ìª®, çâ® ¢ë á¯®á®¡­ë ¯¥à¥á¯®à¨âì á ¬®£®' + slb + '“¡¥à Œ à£¨­ « . ®à  áâ ¢¨âì â®çªã ¢ íâ®© ¨áâ®à¨¨. ®à  ¯®áâ ¢¨âì ­ ' + slb + '¬¥áâ® íâ® ®¡­ £«¥¢è¥¥ çãà¡ ­ì¥ ¨ ¯®ª § âì ªâ® §¤¥áì ¡®áá...'); TypeWriter;

                   gotoxy(3, 17); Write('ˆâ ª. —â® ¦¥ ¢ë ®â¢¥â¨â¥? ');
                   gotoxy(3, 19); Write('1. ã íâ® â ª®¥... ¤ ...');
                   gotoxy(3, 20); Write('2. ’ ª®¥... â ª®¥...');
                   gotoxy(3, 21); Write('3. ã... ¥áâì â ª®¥...');
                   EfC4;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('®á«¥ íâ®£® á®ªàãè¨â¥«ì­®£®  à£ã¬¥­â  ¢ ¢ è¥© £®«®¢¥ ­¥¢®«ì­® ¢á¯«ë«  äà § , ' + slb + 'ª®â®àãî ¢ ¬ ¯®¢¥¤ « á ¬ ‹¨­ãá á ®¤­®© ¨å íâ¨å ª àâ¨­®ª á ¬¥¬ ¬¨: ' + slb + '"Only you can prevent shitty Debian memes!". ' + slb + '‚ë ¯®©¬ «¨ á¥¡ï ­  ¬ëá«¨, çâ® íâ® ç¨áâ ï ¯à ¢¤ , ¢¥¤ì ­¨ª®¬ã ªà®¬¥ ' + slb + '¢ á ¢ ¬¨à¥ ¤¥¡¨ ­ ­  ¤¥ªáâ®¯¥ ­ åà¥­ ­¥ ãáà «áï.'); TypeWriter;
                   EfC;
                   subs:=subs+1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‘«ãè â¥«¨ ¡ë«¨ ¢®áå¨é¥­ë íâ®© ¯®¡¥¤®©, ªâ®-â® ¤ ¦¥ ¯®¤¯¨á «áï ' + slb + '­  ¢ èã £àã¯¯ã.'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); Textcolor(4); twTMP:=('Game Over: '); TypeWriter; Textcolor(7); gotoxy(14, 2); twTMP:=('Š § å ®¡¨¤¥«áï ¨ ¡®«ìè¥ ­¨ª®£¤  ­¥ ¢¥à­¥âáï...'); TypeWriter;
                   EfC;

                   cursoroff;
                   clrscr;
                   twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Heartless Bastard: Ž¡¨¤¥âì ª § å .');
                   GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
                   TypeWriter;
                   delay(3000);
                   clrscr;

                   goto newgame;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2); Textcolor(4); twTMP:=('Game Over: '); TypeWriter; Textcolor(7); gotoxy(14, 2); twTMP:=('mov cl,ParmLength '); TypeWriter; delay(1200);
                   gotoxy(14, 3); twTMP:=('or cl,cl '); TypeWriter; delay(500);
                   gotoxy(14, 4); twTMP:=('jz A2  '); TypeWriter; delay(300);
                   gotoxy(14, 5); twTMP:=('xor ch,ch '); TypeWriter; delay(900);
                   gotoxy(14, 6); twTMP:=('mov dx,offset Parameters '); TypeWriter; delay(600);
                   gotoxy(14, 7); twTMP:=('mov bx,handle '); TypeWriter; delay(700);
                   gotoxy(14, 8); twTMP:=('mov ah,FWRITE '); TypeWriter; delay(2000);
                   clrscr; delay(3000);
                   WriteHudBug; delay(500); WriteHud; delay(500); WriteHudBug; delay(500); WriteHudBug; delay(500);
                   WriteHudBug; delay(500); WriteHud; delay(500); WriteHudBug; delay(500); WriteHudBug; delay(500);
                   clrscr; delay(3000);
                   LoadingBar;delay(500);

                   cursoroff;
                   clrscr;
                   twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Jailbreak: ‚ë á«®¬ «¨ ¨£àã.');
                   GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
                   TypeWriter;
                   delay(3000);
                   clrscr;

                   goto newgame;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('àï¬® ¯®áà¥¤¨ íä¨à  ªâ®-â® ¯¨è¥â ¢ ¬ ¢ «¨çªã á ¯à¥¤«®¦¥­¨¥¬ áå®¤¨âì ¤® ' + slb + '¡ ­ª®¬ â  ­  ª®â®à®¬ ãáâ ­®¢«¥­ áª¨¬¬¥à.'); TypeWriter;

           gotoxy(3, 17); Write('‚ è¨ ¤¥©áâ¢¨ï? ');
           gotoxy(3, 19); Write('1. ¥ ®â¢¥ç âì...');
           gotoxy(3, 20); Write('2. ®á« âì ­ åã©...');
           gotoxy(3, 21); Write('3. à¥à¢ âì íä¨à ¨ ¯®©â¨ á ­¨¬...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ¯à®¤®«¦ ¥â¥ íä¨à...'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   subs:=subs-1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('—¥«®¢¥ª, ª®â®àë© ¯¨á « ¢ ¬, ®¡§ë¢ ¥â ¢ á ¬ ¬ª¨­ë¬ å æª¥à®¬ ¨ ®â¯¨áë¢ ¥âáï ' + slb + '®â ¢ è¥© £àã¯¯ë ¢ ¢ª. ‚ë à ááâà®¨«¨áì.'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë, á 12-â¨ «¥â­¨¬ èª®«ì­¨ª®¬, ª®â®àë© ¯¨á « ¢ ¬ ¢ ¢ª, ¯®¤å®¤¨â¥ ª ' + slb + '¡ ­ª®¬ âã ¨ ­ ç¨­ ¥â¥ ¯à®¢¥àïâì ¥£® ­  ­ «¨ç¨¥ áª¨¬¬¥à ...'); TypeWriter;
                   gotoxy(3, 5); write('.'); delay(500); gotoxy(4, 5); write('.'); delay(500); gotoxy(5, 5); write('.'); delay(200);
                   gotoxy(3, 6); write('.'); delay(500); gotoxy(4, 6); write('.'); delay(500); gotoxy(5, 6); write('.'); delay(200);
                   gotoxy(3, 8); twTMP:=('‚­¥§ ¯­®, á§ ¤¨ ­  ¢ á ­ «¥â ¥â ®âàï¤ ®¬®­ ...'); TypeWriter;
                   EfC;
                   clrscr;
                   gotoxy(3, 2); Textcolor(4); twTMP:=('Game Over: '); TypeWriter; Textcolor(7); gotoxy(14, 2); twTMP:=('‘ª®¢ ­­ë© ­ àãç­¨ª ¬¨, ¢ë ¨¤¥â¥ ¯® å®«®¤­®© ¤ «ì­¥¢®áâ®ç­®© ã«¨æ¥' + #13#10 + '  ' + '¯àï¬¨ª®¬ ­  ¥éñ ¡®«¥¥ ¤ «ì­¨© ¢®áâ®ª... Šâ®-â® ¬®¦¥â áª § âì çâ® íâ®â ¢®áâ®ª' + #13#10 + '  ' + '¤ «ñª ­ áâ®«ìª®, çâ® íâ® ã¦¥ § ¯ ¤, ­®, ­¥ ®¡¬ ­ë¢ ©â¥ á¥¡ï, ¢ë §­ ¥â¥' + #13#10 + '  ' + 'çâ® íâ® ¢áñ ¥éñ ¢®áâ®ª.'); TypeWriter;
                   EfC;

                   cursoroff;
                   clrscr;
                   twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Meet the Team:');
                   GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
                   TypeWriter;
                   gotoxy(22, 12); twTMP:=('®§­ ª®¬¨âìáï á á®âàã¤­¨ª ¬¨ ®¬®­ .');
                   TypeWriter;
                   delay(4000);
                   clrscr;

                   cursoroff;
                   clrscr;
                   twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Occupy Skimmerfilyay:');
                   GoToXY((Lo(WindMax)-Length(twTMP)) div 2, Hi(WindMax) div 2);
                   TypeWriter;
                   gotoxy(10, 12); twTMP:=('‚ë ¯®§­ ª®¬¨«¨áì á 12-«¥â­¨¬ èª®«ì­¨ª®¬ ¢ á®æ¨ «ì­®© á¥â¨ ¨');
                   TypeWriter;
                   gotoxy(18, 13); twTMP:=('¤®£®¢®à¨«¨áì ¢áâà¥â¨âìáï á ­¨¬ ¢ à¥ «¥.');
                   TypeWriter;
                   delay(7000);
                   clrscr;

                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­¥ ­ ¯¨á « Œ¨å ¨« ‚ á¨«ì¥¢¨ç, ®­ ¨§êï¢¨« ¦¥« ­¨¥ ¯à®ç¨â âì «¥ªæ¨î ' + slb + '¯® ¢¢¥¤¥­¨î ¢ ­ ãªã «®£¨ª¨.'); TypeWriter;

           gotoxy(3, 17); Write('Žâ¢¥â¨âì: ');
           gotoxy(3, 19); Write('1. Ÿ ¢ á ª â¥£®à¨ç¥áª¨ ¯à¨¢¥âáâ¢ãî. Œ¨å « ‚ á¨«ì¨ç...');
           gotoxy(3, 20); Write('2. ®èñ« ­ åã© á mad fm!');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('1. Ÿ ¢ á ª â¥£®à¨ç¥áª¨ ¯à¨¢¥âáâ¢ãî. Œ¨å « ‚ á¨«ì¨ç...'); TypeWriter;

                   gotoxy(3, 4); twTMP:=('¥à¢ ï ¬ëá«ì - ¢®â ®­ , ¡ëâ¨¥. ‚â®à ï - ®âà¨æ â¥«ì­ ï, íâ® ¥ñ ®âà¨æ ­¨¥.'); TypeWriter2;
                   gotoxy(3, 5); write('1. ...'); EfC2;
                   gotoxy(3, 6); twTMP:=('€ â¥¯¥àì ®âà¨æ ­¨¥ íâ®£®.. ­¥¡ëâ¨ï, ­ã ¬ëë íí ¢áñ â ª¨ íâã ¨§ãç ¥¬ ª­¨£ã? ' + slb + '‡­ ç¨â ¬ë ¤®«¦­ë ¢§ïâì íâã ¦¥ ª­¨£ã... íâã ¦¥ ª­¨£ã - æ¥«®¥.'); TypeWriter2;
                   gotoxy(3, 8); write('1. ...'); EfC2;
                   gotoxy(3, 9); twTMP:=('‘ íâ¨¬ ¢®â á®¤¥à¦ ­¨¥¬...'); TypeWriter2;
                   gotoxy(3, 10); write('1. ...'); EfC2;
                   gotoxy(3, 11); twTMP:=('‚ æ¥«®¬...'); TypeWriter2;
                   gotoxy(3, 12); write('1. ...'); EfC2;
                   gotoxy(3, 13); twTMP:=('ˆ ¢¥à­ãâìáï á­®¢  ª íâ®© ª­¨£¥, â¥¯¥àì ¨¬¥ï ¢ ¢¨¤ã çâ® á®¤¥à¦ ­¨¥ ' + slb + 'â ¬ ¥áâì. â® çâ® â ª®¥ ¡ã¤¥â? - Žâà¨æ ­¨¥ ®âà¨æ ­¨ï.'); TypeWriter2;
                   gotoxy(3, 15); write('1. ...'); EfC;

                   Refresh;
                   gotoxy(3, 2); twTMP:=('„¢¨¦¥­¨¥ ¨áç¥§­®¢¥­¨ï ¡ëâ¨ï ¢ ­¨çâ®,   ­¨çâ® ¢ ¡ëâ¨¥'); TypeWriter2;
                   gotoxy(3, 3); write('1. ...'); EfC2;
                   gotoxy(3, 4); twTMP:=('¨çâ® ¯¥à¥è«®.. ¢ ¡ëâ¨¥...'); TypeWriter2;
                   gotoxy(3, 5); write('1. ...'); EfC2;
                   gotoxy(3, 6); twTMP:=('€ íâ® ã¦¥ â ª®¥ ¡ëâ¨¥, ª®â®à®¥ ¤¢  íâ ¯  ¯à¥¤¯®« £ ¥â, «®£¨ç¥áª¨å, ¤¢  ' + slb + '«®£¨ç¥áª¨å è £ , ¨,   íâ® ¡ëâ¨¥ â¥¯¥àì, ­¨ç¥£® ã¦¥ ­¥ ­ ¤® ¤®ª §ë¢ âì, ' + slb + '  ¡ëâ¨¥ â® ¬ë ã¦¥ §­ ¥¬, çâ® ¯¥à¥å®¤¨â ¢ ­¨çâ®)))00'); TypeWriter;
                   gotoxy(3, 9); write('1. ...'); EfC2;
                   gotoxy(3, 10); twTMP:=('ˆáì¥­®¥!!! —® ­¥ ­ ¯¨á ­®?! ˆ­®¥ ¦¥ ­ ¯¨á ­®! € ¢ë çâ® ãâ¢¥à¦¤ ¥â¨?'); TypeWriter2;
                   gotoxy(3, 11); write('1. ...'); EfC2;
                   gotoxy(3, 12); write('.'); delay(1100); gotoxy(4, 12); write('.'); delay(1100); gotoxy(5, 12); write('.'); delay(1100);
                   EfC;

                   subs:=subs+1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚á¥¬ «î¤ï¬ ¯®à®© ­ã¦­® ¢ë£®¢®à¨âìáï,   ã áã¬ áè¥¤è¨å íâ® ¦¥« ­¨¥ ®á®¡¥­­® ' + slb + 'á¨«ì­®, Œ¨å ¨« ‚ á¨«ì¥¢¨ç ¡« £®¤®à¨â ¢ á ¨ ¯®¤¯¨áë¢ ¥âáï ­  ' + slb + '¢ èã £àã¯¯ã ¢ ¢ª.'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('€ã¤¨â®à¨ï ¯®¤¤¥à¦ «  ¢ á - íâ¨ ä¨«®á®äë ã¦¥ § ¥¡ «¨.'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('Ž ­¥â! ˜ª®«ì­¨ª¨ á ¤¨®­¨á ä¬ ­ ¡¥¦ «¨ ­  à ¤¨® ¨ ¯ëâ îâáï á¯¨§¤¨âì ¢ è ¯«¥¥à!'); TypeWriter;

           gotoxy(3, 17); Write('—â® ¢ë ­ ¬¥à¥­ë ¯à¥¤¯à¨­ïâì? ');
           gotoxy(3, 19); Write('1.  ¯¨á âì £­¥¢­ë© ª®¬¬¥­â à¨© ¢ á¢®¥© £àã¯¯¥.');
           gotoxy(3, 20); Write('2. ¨ç¥£® ­¥ ¤¥« âì.');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ®âªàë«¨ á¢®î £àã¯¯ã ¨ ­ áâà®ç¨«¨ â ¬ £­¥¢­ë© ª®¬¬¥­â, â¥¯¥àì ¢ë ' + slb + 'çã¢áâ¢ã¥â¥ á¥¡ï ­ áâ®ïé¨¬ ¬ã¦ç¨­®©.'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('ä¨à ¯à®¤®«¦ ¥âáï...'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('  áâ¥­ã ¯à¨è«  Ÿà®¢ ï ¨ ­ ç «  âà®««¨à®¢ âì ¢ á á¢®¨¬ ¯ ª¥â®¬.'); TypeWriter;

           gotoxy(3, 17); Write('Š ª ¢ë ¢ë©¤¨â¥ ¨§ íâ®© á¨âã æ¨¨? ');
           gotoxy(3, 19); Write('1. ‚ëáª § âì ¥© ¢áñ, çâ® ¢ë ® ­¥© ¤ã¬ ¥â¥.');
           gotoxy(3, 20); Write('2. ¥ à¥ £¨à®¢ âì ­  âà®««¨­£.');
           gotoxy(3, 21); Write('3. ‘®§¤ âì á¢®© ¯ ª¥â...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('Ÿà®¢ ï:   §§ § § § § § § § § § § §'); TypeWriter2; delay(500);
                   gotoxy(3, 4); twTMP:=('Ÿà®¢ ï: § âà «¨«  « «ªã'); TypeWriter; delay(500);
                   gotoxy(3, 6); twTMP:=('Ÿà®¢ ï: €€‡€‡€‡€‡€‡€‡ ®àã ¢ £®«®á¨­ã ¯à®áâ))))000'); TypeWriter2; delay(500);
                   gotoxy(3, 8); twTMP:=('Ÿà®¢ ï:  €€€€€€€‡€‡   § § §  €‡€‡€‡€‡€‡€‡     €‡€‡€'); TypeWriter2; delay(1000);
                   gotoxy(30, 15); twTMP:=('Ÿà®¢ ï:  § § § §§ § § §'); TypeWriter2; delay(1000);
                   gotoxy(60, 4); twTMP:=('Ÿà®¢ ï: «®«'); TypeWriter2; delay(1000);
                   gotoxy(50, 24); twTMP:=('Ÿà®¢ ï: €‡€‡€‡€‡€‡€‡€‡€‡€‡€'); TypeWriter2; delay(500);
                   EfC;

                   subs:=subs-3;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('â® ¡ë«® ¦ «ª®... ­¥áª®«ìª® ç¥«®¢¥ª ®â¯¨á «®áì ®â ¢ è¥© £àã¯¯ë...'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('ä¨à ¯à®¤®«¦ ¥âáï...'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   subs:=subs+1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë á®§¤ «¨ á¢®© ¯ ª¥â ¨ ®â¯à ¢¨«¨ ¥£® ãâ¨­ã. ãâ¨­ ­¥ ¯®¤¯¨á « ¢ è ¯ ª¥â, ' + slb + '§ â® ¯®¤¯¨á «áï ­  ¢ èã £àã¯¯ã ¢ ¢ª. ®ª  ¢ë á®§¤ ¢ «¨ ¯ ª¥â, Ÿà®¢®© ­ ¤®¥«® ' + slb + '¨ ®­  ãè« ...'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('Š ¦¥âáï ¢®¯à®áë § ª®­ç¨«¨áì, ¯®à  § ç¨âë¢ âì ­®¢®áâ¨.'); TypeWriter;

           gotoxy(3, 17); Write('  ª ª®© ¯®àâ « ¢ë ¡ë å®â¥«¨ ®â¯à ¢¨âìáï?');
           gotoxy(3, 19); Write('1. Opennet');
           gotoxy(3, 20); Write('2. SecurityLab');
           gotoxy(3, 21); Write('3. 4PDA');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2);  write('opennet.ru - á¢¥¦¨¥ ¬¥¬¥áë ª ¦¤ë© ¤¥­ì'); delay(50);
                   gotoxy(3, 6);  write('‚¥àá¨ï ¯ ª¥â  ¡« ¡«  ¤®áâ¨£«  1.0.5.51'); delay(50);
                   gotoxy(3, 8);  write('Š®¬ ­¤  ¤¥¡¨ ­  ®¡êï¢«ï¥â ª®­ªãàá à¨áã­ª®¢'); delay(50);
                   gotoxy(3, 10);  write('‚¥àá¨ï ¯ ª¥â  ¡«  ¤®áâ¨£«  2.2.34'); delay(50);
                   gotoxy(3, 12);  write('‚¥àá¨ï ¯ ª¥â  ¡« ¡« ¡«  ¤®áâ¨£«  0.0.99.27'); delay(50);
                   gotoxy(3, 14);  write('”®­¤ ¬®§¨««ë ¢ë¤¥«¨« ¤¥­ì£¨ ­  à §¢¨â¨¥ ®âªàëâ®£® ¯®'); delay(50);
                   gotoxy(3, 16);  write('Œ®§¨««  à §®à¨« áì'); delay(50);
                   gotoxy(3, 18);  write('‚¥àá¨ï ¯ ª¥â  gnome2 § ç¥¬-â® ¤®áâ¨£«  ¢¥àá¨¨ gnome3'); delay(50);
                   EfC;

                   subs:=subs+1;
                   Refresh;
                   gotoxy(3, 2); twTMP:=('Š ª®©-â® ¥¡ ­ãâë© ¡®à®¤ âë© åà¥­ ¯®¤¯¨á «áï ­  ¢ á §  â®, çâ® ¢ë ¯à®ç¨â «¨ ' + slb + 'á¢®¤ªã ­®¢®áâ¥© á ®¯¥­­¥â .'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('Firefox ­¥ ¬®¦¥â ãáâ ­®¢¨âì á®¥¤¨­¥­¨¥ á á¥à¢¥à®¬ www.securitylab.ru'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2);  write('4pda.ru - ¢¥¤ì ­®¢®áâ¨ ¯à® ¬®¡¨«ë íâ® â ª ¨­â¥à¥á­®'); delay(50);
                   gotoxy(3, 6);  write('®¢ë©  ©ä®­ ¡« -¡«  ­®¢ë© ç¥å®« ¤«ï  ©ä®­  ¡« '); delay(50);
                   gotoxy(3, 8);  write('¡«  ¡«  ªã¯¨«  ¡«  ¨ â¥¯¥àì ¡«  ¯®«­ë© ¡« '); delay(50);
                   gotoxy(3, 10);  write('¬ ©ªà®á®äâ ªã¯¨« ª®¬¯ ­¨î ¡« , ç¥à¥§ ­¥áª®«ìª® ¬¥áïæ¥¢ ª®¬¯ ­¨ï à §®à¨« áì'); delay(50);
                   gotoxy(3, 12);  write('¡«  ¡«  áâ¨¢ ¤¦®¡á ¢®áªà¥á'); delay(50);
                   gotoxy(3, 14);  write('¡«  ¡«  ¯¥à¢®¥  ¯à¥«ï'); delay(50);
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('ä¨à ¡«¨§¨âáï ª ª®­æã, ¨, ¢ § ª«îç¥­¨¥, ¢ë ¬®£«¨ ¡ë ¯à®à¥ª« ¬¨à®¢ âì á¢®¨' + slb + '¯à®¥ªâë, ­® ­¨ªâ® ­¥ § áâ ¢«ï¥âáï ¢ á ¤¥« âì íâ®, ¢ë ¢®«ì­ë ­ ¯¨á âì' + slb + '­  áâ¥­¥ ¢áñ çâ® ã£®¤­®!'); TypeWriter;

           gotoxy(3, 17); Write('—â® ¦¥ íâ® ¡ã¤¥â?');
           gotoxy(3, 19); Write('1.  ¯¨á âì ­  áâ¥­¥: Zx Spectrum');
           gotoxy(3, 20); Write('2. à®à¥ª« ¬¨à®¢ âì á¢®¨ ¯à®¥ªâë');
           gotoxy(3, 21); Write('3.  ¯¨á âì ­  áâ¥­¥: ®è«¨ ¢ë ¢á¥ ­ åã©!');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë, § ç¥¬-â®, ¯®¯ëâ «¨áì ­ ¯¨á âì ­  áâ¥­¥ "Zx Spectrum". ' + slb + '‚ë ¤ã¬ «¨ çâ® ¢áñ á ¬®¥ á«®¦­®¥ ¯®§ ¤¨... ª ª ¡ë ­¥ â ª! Š ª ¨ ¢ «î¡®©' + slb + '¯®àï¤®ç­®© ¨£à¥, ¢ íâ®© - ¥áâì ä¨­ «ì­ë© ¡®áá - ª ¯ç .'); TypeWriter;
                   EfC;
              end
           else if ABC='2'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('ˆ§-§  ®¡¨«¨ï ááë«®ª, ª®â®àë¥ ¢ë ­ ª¨¤ «¨ ¢ á¢®¥ á®®¡é¥­¨ï, ' + slb + '¢ª à¥è¨«  çâ® ¢ë - á¯ ¬¬¥à! ' + slb + 'à¨£®â®¢ìâ¥áì ¢áâà¥â¨âìáï á ä¨­ «ì­ë¬ ¡®áá®¬ íâ®© ¨£àë - á ª ¯ç®©!'); TypeWriter;
                   EfC;
              end
           else if ABC='3'
              then begin
                   Refresh;
                   gotoxy(3, 2); twTMP:=('‚ë ­ ¯¨á «¨ ­  áâ¥­¥ á®®¡é¥­¨¥ á® á«¥¤ãîé¨¬ á®¤¥à¦ ­¨¥¬:' + slb + slb + '"®è«¨ ¢ë ¢á¥ ­ åã©!"'); TypeWriter;
                   EfC2;
                   gotoxy(3, 6); twTMP:=('“¤¨¢¨â¥«ì­®, ­® íâ® ¥¤¨­áâ¢¥­­ë© ¢ à¨ ­â ¨§ ¢®§¬®¦­ëå, ª®â®àë© ¢ª ¯à®¯ãáâ¨«  ' + slb + '¡¥§ ¢¢®¤  ª ¯ç¨, çâ®, ª®­¥ç­® ¦¥, ¬­®£®¥ £®¢®à¨â ® ¯®âà¥¡­®áâïå æ¥«¥¢®© ' + slb + ' ã¤¨â®à¨¨ íâ®© á®æ¨ «ì­®© á¥â¨. ’ ª ¨«¨ ¨­ ç¥, ¢ë ¯à®¯ãáâ¨«¨' + slb + 'ä¨­ «ì­®£® ¡®áá , ãá¯¥è­® § ª®­ç¨«¨ ¨£àã ¨ ¢ë … ã¢¨¤¨â¥ £¥­¨ «ì­ãî ª®­æ®¢ªã.' + slb + 'Œ®¨ ¯®§¤à ¢«¥­¨ï, áà ­ë© ç¨â¥à.'); TypeWriter;
                   EfC;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3');

     if ABC='3' then goto newgame; ABC:=#0;

     ending:
     cursoroff;

     bossErrors:=0;
     bossS:=#0;
     bossQ:=0;
     bossTimer:=0;
     bossErrors:=0;

     for bossQ:=1 to 3 do begin

     clrscr;
     Captcha;
     bossTimer:=9;
     bTimer;
     clrscr;
     CaptchaCheck;

     if OutCaptcha <> BossCheck then bossErrors:= bossErrors+1;
     end;

     case bossErrors of
     1..3:  bossS:='0';
     end;

     if bossS='0' then begin
          clrscr;
          GoToXY((Lo(WindMax)-Length('—¨á«® ®è¨¡®ª:  . ‘ª®à¥¥ ¢á¥£® ¢ë á¯ ¬¬¥à. ®¯à®¡ã©â¥ ¥éñ à §.')) div 2, Hi(WindMax) div 2);
          write('—¨á«® ®è¨¡®ª: ', bossErrors, '. ‘ª®à¥¥ ¢á¥£® ¢ë á¯ ¬¬¥à. ®¯à®¡ã©â¥ ¥éñ à §.');
          delay(1000);
          EfC3;
          clrscr;
          goto ending;
          end;

     Writeln('Š®­æ®¢ª ');

     repeat
           Refresh;

           gotoxy(3, 2); twTMP:=('®á«¥ ¢á¥å íâ¨å ¨á¯ëâ ­¨© ¢ë ¤®è«¨ ¤® ª®­æ  ¨ ­ áâ «  ¯®à  ¤¥« âì à¥è îé¨©' + slb + '¢ë¡®à...'); TypeWriter;

           gotoxy(3, 17); Write('‚ë¡¥à¨â¥ ª®­æ®¢ªã: ');
           gotoxy(3, 19); Write('1. Šà á­ ï ª®­æ®¢ª ...');
           gotoxy(3, 20); Write('2. ‡¥«ñ­ ï ª®­æ®¢ª ...');
           gotoxy(3, 21); Write('3. ‘¨­¨ï ª®­æ®¢ª ...');
           gotoxy(3, 22); cursoron; Readln(ABC); cursoroff;

           if ABC='1'
              then begin
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('‚ë ¢ë¡à «¨ ªà á­ãî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...')) div 2, Hi(WindMax) div 2);
                   write('‚ë ¢ë¡à «¨ ªà á­ãî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...');
                   EfC3;

                   Window(1, 1, 80, 25);
                   Textbackground(4);
                   Textcolor(15);
                   cursoroff;
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('Šà á­ ï ª®­æ®¢ª ')) div 2, Hi(WindMax) div 2);
                   write('Šà á­ ï ª®­æ®¢ª '); delay(10000);
                   EfC3;
              end
           else if ABC='2'
              then begin
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('‚ë ¢ë¡à «¨ §¥«ñ­ãî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...')) div 2, Hi(WindMax) div 2);
                   write('‚ë ¢ë¡à «¨ §¥«ñ­ãî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...');
                   EfC3;

                   Window(1, 1, 80, 25);
                   Textbackground(2);
                   Textcolor(15);
                   cursoroff;
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('‡¥«ñ­ ï ª®­æ®¢ª ')) div 2, Hi(WindMax) div 2);
                   write('‡¥«ñ­ ï ª®­æ®¢ª '); delay(10000);
                   EfC3;
              end
           else if ABC='3'
              then begin
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('‚ë ¢ë¡à «¨ á¨­îî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...')) div 2, Hi(WindMax) div 2);
                   write('‚ë ¢ë¡à «¨ á¨­îî ª®­æ®¢ªã, ­ á« ¦¤ ©â¥áì...');
                   EfC3;

                   Window(1, 1, 80, 25);
                   Textbackground(1);
                   Textcolor(15);
                   cursoroff;
                   clrscr;
                   GoToXY((Lo(WindMax)-Length('‘¨­ïï ª®­æ®¢ª ')) div 2, Hi(WindMax) div 2);
                   write('‘¨­ïï ª®­æ®¢ª '); delay(10000);
                   EfC3;
              end
           else continue;
     until (ABC = '1') or (ABC = '2') or (ABC = '3'); ABC:=#0;

     cursoroff;
     clrscr;
     GoToXY((Lo(WindMax)-Length('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Simon Says: “á¯¥è­® ¯à®¢¥áâ¨ íä¨à ¨ § ª®­ç¨âì ¨£àã.')) div 2, Hi(WindMax) div 2);
     twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. Simon Says: “á¯¥è­® ¯à®¢¥áâ¨ íä¨à ¨ § ª®­ç¨âì ¨£àã.');
     TypeWriter;
     delay(6000);
     clrscr;

     if subs = 125 then begin
           cursoroff;
           clrscr;
           GoToXY((Lo(WindMax)-Length('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. More Popular Than Jesus:  ¡à âì 125 ¯®¤¯¨áç¨ª®¢.')) div 2, Hi(WindMax) div 2);
           twTMP:=('„®áâ¨¦¥­¨¥ à §¡«®ª¨à®¢ ­®. More Popular Than Jesus:  ¡à âì 125 ¯®¤¯¨áç¨ª®¢.');
           TypeWriter;
           delay(10000);
           clrscr;
     end;

goto newgame;
end.
