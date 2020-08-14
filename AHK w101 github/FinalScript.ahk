`::suspend
1::
InputBox, mana, mana enter,


   loop{

      random, delay, 1000, 3000
      Sleep, %delay%

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

      send {x}
      random, delay, 13000, 15000
      Sleep, %delay%
      loop{
         imagesearch, x, y, 1740, 903, 1842, 997, *100 spiral.png
         if ErrorLevel = 2
         continue
         if ErrorLevel =1
         continue
         if(ErrorLevel =0){
            send {up down}
            random, delay, 2800, 3000
            Sleep, %delay%
            send {up up}
            random, delay, 5862, 6243
            Sleep, %delay%
            break
         }}


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

         sleep 15000


         loop{
            random, delay, 1850, 2320
            Sleep, %delay%

            imagesearch, x, y, 1740, 903, 1842, 997, *100 spiral.png
            if ErrorLevel =2
            msgbox, something went wrong
            if(ErrorLevel =1){
               imagesearch, x, y, 512, 648, 731, 730, *150 pass.png
               if(ErrorLevel=2)
                  continue
               if(ErrorLevel=1)
                  continue
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
