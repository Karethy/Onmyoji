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
MacroID=5e481c06-84ed-4f4a-9438-56813636c1cc
Description=yl_自动备份
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
/*阴阳师御灵挂机V3.0
  Author： Kareth
  Time： 2018/02/26
 */
i = 1
Delay 2000

FindColor 0, 0, 1000, 400, "8183DE", X, Y

While i <> 0

/*挑战*/
    color1 = GetPixelColor(X+793, Y+472)
    color2 = GetPixelColor(X+865, Y+474)
    If color1 = "5EB2F3" and color2 = "5EB2F3" Then
        MoveTo X+827, Y+471//满足条件，执行下面的脚本
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
    colorsuccess1 = GetPixelColor(X+387, Y+218)
    colorsuccess2 = GetPixelColor(X+438, Y+212)
    If colorsuccess1 = "111DB3" and colorsuccess2 = "111BA8" Then
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
/*协作弹框*/
    coloraccess = GetPixelColor(X + 741, Y + 397)
    colorrefuse = GetPixelColor(X + 745, Y + 482)
    If coloraccess = "5CAE51" and colorrefuse = "5B6DDA" Then
        MoveTo X+739, Y+405
        Delay 500
        LeftClick 1
    End If

Wend








