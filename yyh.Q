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
MacroID=97d31aa3-b7fa-4a9b-a2c8-ee4b1463a2f2
Description=yyh
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
/*阴阳师业原火挂机V2.0
  Author： Kareth
  Time： 2017/12/01
 */
i = 1
Delay 2000

FindColor 0, 0, 1000, 400, "08161B", X, Y

While i <> 0

/*挑战*/

    color1 = GetPixelColor(X+809, Y+452)
    color2 = GetPixelColor(X+877, Y+451)
    If color1 = "5EB2F3" and color2 = "5EB2F3" Then
        MoveTo X+842, Y+449//满足条件，执行下面的脚本
        Delay 500
        LeftClick 1

		
    End If

    
/*结算*/
    color5 = GetPixelColor(X + 550, Y + 475)
    color6 = GetPixelColor(X + 665, Y + 457)
    color7 = GetPixelColor(X + 390, Y + 451)
    color8 = GetPixelColor(X + 734, Y + 417)
    If color7 = "1C3DD9" and color8 = "381DBA" Then
        Delay 1000
        LeftClick 1
    ElseIf color5 = "14182D" and color6 = "1891D1" Then
        Delay 1000
        LeftClick 1
	
    End If
/*协作弹框*/
    coloraccess = GetPixelColor(X + 756, Y + 374)
    colorrefuse = GetPixelColor(X + 760, Y + 461)
    If coloraccess = "5DAF52" and colorrefuse = "5A6CDB" Then
        MoveTo X+756, Y+374
        Delay 500
        LeftClick 1
    End If

Wend








