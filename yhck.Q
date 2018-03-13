[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=6ab2c101-4ce1-42e8-9713-8f5d10b01ff0
Description=yhck
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
/*阴阳师御魂挂机（乘客端）V3.0
  Author： Kareth
  Time： 2018/02/26
 */
i = 1
Delay 3000

FindColor 0, 0, 1000, 400, "8183DE", X, Y


While i <> 0

/*第一次接受*/

    color1 = GetPixelColor(X+204, Y+263)
    color2 = GetPixelColor(X+116, Y+248)
    If color1 = "5D6AB3" and color2 = "62B358" Then
        MoveTo X+116, Y+248//满足条件，执行下面的脚本
        Delay 500
        LeftClick 1

		
    End If
    
/*第二次接受*/

    color21 = GetPixelColor(X+204, Y+263)
    color22 = GetPixelColor(X+116, Y+248)
    If color21 = "61B357" and color22 = "62B358" Then
        MoveTo X+191, Y+256//满足条件，执行下面的脚本
        Delay 500
        LeftClick 1

		
    End If

/*准备*/
    color3 = GetPixelColor(X+967, Y+589)
    color4 = GetPixelColor(X+1086, Y+587)
    If color3 = "081169" and color4 = "132AC8" Then
        MoveTo X+1021, Y+515
        Delay 500
        LeftClick 1
    End If
    
/*胜利*/
    colorsuccess1 = GetPixelColor(X+396, Y+159)
    colorsuccess2 = GetPixelColor(X+435, Y+159)
    If colorsuccess1 = "111CAB" and colorsuccess2 = "111BAA" Then
        LeftClick 2
        Delay 500
        LeftClick 2
        Delay 500
    End If    
/*结算*/
    color5 = GetPixelColor(X + 624, Y + 579)
    color6 = GetPixelColor(X + 671, Y + 548)
    If color5 = "040237" and color6 = "0B296F" Then
        Delay 1000
        LeftClick 1
    End If
/*失败*/
    color7 = GetPixelColor(X + 376, Y + 468)
    color8 = GetPixelColor(X + 770, Y + 489)
    If color7 = "1543E1" and color8 = "1734C3" Then
        Delay 1000
        LeftClick 1
    End If
 
/*司机跳车*/
    color9 = GetPixelColor(X+356, Y+450)
    color10 = GetPixelColor(X + 614, Y + 450)
    If color9 = "BCC6CE" and color10 = "8ACBE0" Then 
        MoveTo X+187, Y+565
        Delay 100
        LeftClick 1
        Delay 500
        MoveTo X+677, Y+399
        Delay 100
        LeftClick 1

		
    End If

/*发现大蛇*/
    colorsn1 = GetPixelColor(X + 18, Y + 251)
    colorsn2 = GetPixelColor(X + 296, Y + 251)
    If colorsn1 = "418CCF" and colorsn2 = "957C92" Then 
    	MoveTo X+18, Y+251
        Delay 200
        LeftClick 1
    End If
  
/*协作弹框*/
    coloraccess = GetPixelColor(X + 741, Y + 397)
    colorrefuse = GetPixelColor(X + 745, Y + 482)
    If coloraccess = "5CAE51" and colorrefuse = "5B6DDA" Then
        MoveTo X+739, Y+405
        Delay 500
        LeftClick 1
    End If
    

Wend
