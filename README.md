# \_SplitArgs
AutoIt Funktion die einen String, wie die Argumente eines Funktionsaufrufs, in ein Array zerlegt

## Funktionsaufruf und Beispiel

```autoit
#Region Includes
#include <Array.au3>
#EndRegion Includes

Main()

Func Main()
	Local $s = 'true,"test" , $test[2][3], $test[4], @AppDataDir, 2,23.343,  "   ",        "$test'' ,2" ,   _Function("test", ''test2'', StringStripWS($b,3)), "test3", false  , ''     "    Test", ,, ,, 4      '',""'
	Local $a = __SplitArgs($s)
	_ArrayDisplay($a)
EndFunc  
```

Ergebnis:

![ArrayDisplay](/images/Thorsten_Willert__SplitArgs.png)

## Voraussetzungen

AutoIt


## Installation

Als Funktion in das eigene Programm kopieren, oder als UDF in das Include Verzeichnis von AutoIt kopieren.


## Diskusion und Vorschläge
...

## ToDo
...

## Authors
Thorsten Willert

[Homepage](https://www.thorsten-willert.de/software/autoit/autoit-funktionen/_splitargs)

## Lizenz
Das Ganze steht unter der [MIT](https://github.com/THWillert/HomeMatic_CSS/blob/master/LICENSE) Lizenz
.
