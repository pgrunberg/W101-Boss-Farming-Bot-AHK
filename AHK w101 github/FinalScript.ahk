`::suspend
1::
;all Xmod Ymod variables refer to mouse clicks coordinates being randomized from where image was detected for each interation. This is an anti-cheat detection.
;Prompts user to enter mana at start of farming session
InputBox, mana, mana enter,

;begins the script until user breaks out manually
   loop{

; random sleep delay to avoid cheat detection
      random, delay, 1000, 3000
      Sleep, %delay%

;checks if a mana potion needs to be used
      if(mana < 10)
      {
      sleep, 200
      MouseMove, 294, 995
      sleep, 50
      Click, Left
      mana:= 365
      }

      random, delay, 1000, 3000
      Sleep, %delay%

;begins to enter dungeon
      send {x}
      random, delay, 13000, 15000
      Sleep, %delay%
      loop{
      ;searches for spiral book to see if loading screen is finished
         imagesearch, x, y, 1740, 903, 1842, 997, *100 spiral.png
         if ErrorLevel = 2
         continue
         if ErrorLevel =1
         continue
         ;proceeds into boss battle
         if(ErrorLevel =0){
            send {up down}
            random, delay, 2800, 3000
            Sleep, %delay%
            send {up up}
            random, delay, 5862, 6243
            Sleep, %delay%
            break
         }}

;locates and uses Epic buff card
         imagesearch, x, y, 785, 457, 1248, 621, *150 epic.png
         if ErrorLevel =2
         msgbox, There was some sort of problem
         if ErrorLevel = 1
         msgbox, The image was not found
         if ErrorLevel =0
         random, Xmod, -5, 5
         random, Ymod, -10, 10
         MouseMove, x+Xmod, y+Ymod
         Click, Left
         random, delay, 800, 1250
         Sleep, %delay%
         MouseMove, 1335, 175
         random, delay, 750, 1324
         Sleep, %delay%

;locates and buffs tempest attack card with Epic (testing)
         imagesearch, x, y, 785, 457, 1248, 621, *100 testing.png
         if ErrorLevel =2
         msgbox, There was some sort of problem
         if ErrorLevel = 1
         msgbox, The image was not found
         if ErrorLevel =0
         random, Xmod, -5, 5
         random, Ymod, -10, 10
         MouseMove, x+Xmod, y+Ymod
         Click, Left
         random, delay, 762, 1125
         Sleep, %delay%
         MouseMove, 1335, 175
         random, delay, 790, 1200
         Sleep, %delay%

;Uses the tempest card
         imagesearch, x, y, 785, 457, 1248, 621, *100 testing.png
         if ErrorLevel =2
         msgbox, There was some sort of problem
         if ErrorLevel = 1
         msgbox, The image was not found
         if ErrorLevel =0
         random, Xmod, -5, 5
         random, Ymod, -10, 10
         MouseMove, x+Xmod, y+Ymod
         Click, Left
         random, delay, 820, 1222
         Sleep, %delay%
         MouseMove, 1335, 175
         random, delay, 752, 1325
         Sleep, %delay%
         mana:= mana - 5

;sleeps to wait out attack animation
         sleep 15000


         loop{
            random, delay, 1850, 2320
            Sleep, %delay%

;checks if spiral book is on screen, if so battle is finished
            imagesearch, x, y, 1740, 903, 1842, 997, *100 spiral.png
            if ErrorLevel =2
            msgbox, something went wrong
            
;searches for pass icon on screen to show user still in battle            
            if(ErrorLevel =1){
               imagesearch, x, y, 512, 648, 731, 730, *150 pass.png
               if(ErrorLevel=2)
                  continue
               if(ErrorLevel=1)
                  continue
;locates Epic buff card
               if(ErrorLevel=0){
                  imagesearch, x, y, 785, 457, 1248, 621, *150 epic.png
                  if ErrorLevel =2
                  msgbox, There was some sort of problem
                  if ErrorLevel = 1
                  msgbox, The image was not found
                  if ErrorLevel =0
                  random, Xmod, -5, 5
         	  random, Ymod, -10, 10
                  MouseMove, x+Xmod, y+Ymod
                  Click, Left
                  random, delay, 765, 1125
                  Sleep, %delay%
                  MouseMove, 1335, 175
                  random, delay, 823, 1225
                  Sleep, %delay%
;located unbuffed Wild bolt to be buffed via Epic
                  imagesearch, x, y, 785, 457, 1248, 621, *150 wildboltunbuffed.png
                  if ErrorLevel =2
                  msgbox, There was some sort of problem
                  if ErrorLevel = 1
                  msgbox, The image was not found
                  if ErrorLevel =0
                  MouseMove, x+50, y
                  Click, Left
                  random, delay, 860, 1120
                  Sleep, %delay%
                  MouseMove, 1335, 175
                  random, delay, 781, 1204
                  Sleep, %delay%
;uses wild bolt
                  imagesearch, x, y, 785, 457, 1248, 621, *150 wildbolt.png
                  if ErrorLevel =2
                  msgbox, There was some sort of problem
                  if ErrorLevel = 1
                  msgbox, The image was not found
                  if ErrorLevel =0
                  MouseMove, x+50, y
                  random, delay, 750, 1125
                  Sleep, %delay%
                  Click, Left
                  random, delay, 922, 1150
                  Sleep, %delay%
;targets Asrik boss with wild bolt card
                  imagesearch, x, y, 146, 5, 904, 122, *150 Asrik.png
                  if ErrorLevel =2
                  msgbox, something went wrong
                  if(ErrorLevel =1){
                     msgbox, Asrik not found
                  }
               }
               if(ErrorLevel =0){
                  MouseMove, x, y
                  random, delay, 720, 1250
                  Sleep, %delay%
                  Click, Left
                  mana:= mana - 2
                  continue
               }
            }
;fight is finished, leaves dungeon
            if(ErrorLevel =0){
               random, delay, 400, 1200
               Sleep, %delay%

               Send {left down}
               random, delay, 660, 680
               Sleep, %delay%
               Send {left up}
               random, delay, 50, 250
               Sleep, %delay%
               Send {up down}
               random, delay, 2150, 2290
               Sleep, %delay%
               Send {up up}
               random, delay, 4500, 6500
               Sleep, %delay%
               Send {down down}
               random, delay, 150, 950
               Sleep, %delay%
               Send {down up}
               break
            }
         }
      }


      return
