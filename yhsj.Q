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
MacroID=0d37b975-3cbf-4e47-bcad-ef3b56eba1d9
Description=yhsj
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
/*阴阳师御魂挂机（司机端）V3.0
  Author： Kareth
  Time： 2018/02/26
 */
 i = 1
Delay 3000

FindColor 0, 0, 1000, 400, "8183DE", X, Y

While i <> 0

/*创建队伍与组队*/
    color1 = GetPixelColor(X+156, Y+602)
    color2 = GetPixelColor(X+176, Y+602)
    If color1 = "1F9BC5" and color2 = "68D6F3" Then
        MoveTo X+166, Y+602//御魂图标
        Delay 800
        LeftClick 1
        MoveTo X+316, Y+391//八岐大蛇
        Delay 800
        LeftClick 1
        MoveTo X+546, Y+471//组队
        Delay 800
        LeftClick 1
        MoveTo X+916, Y+591//创建队伍
        Delay 800
        LeftClick 1
        MoveTo X+776, Y+551//创建
        Delay 2500
        LeftClick 1
		
    End If

/*开始战斗*/
    colorst1 = GetPixelColor(X+850, Y+562)
    colorst2 = GetPixelColor(X+977, Y+562)
    If colorst1 = "5EB2F3" and colorst2 = "5EB2F3" Then
        MoveTo X+916, Y+562//满足条件，执行下面的脚本
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

/*邀请确定*/
    color7 = GetPixelColor(X + 439, Y + 398)
    color8 = GetPixelColor(X + 681, Y + 399)
    If color7 = "3B4A8E" and color8 = "56A0D9" Then 
    	Delay 500
    	MoveTo X+486, Y+347
        LeftClick 1
        Delay 500
        MoveTo X+663, Y+405
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
