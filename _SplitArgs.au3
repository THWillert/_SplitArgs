; #FUNCTION# ===================================================================
; Name ..........: _SplitArgs
; Description ...:
; AutoIt Version : V3.3.0.0
; Syntax ........: _SplitArgs($s)
; Parameter(s): .: $s           - Arguments as string
; Return Value ..: Success      - Array
;                  Failure      -
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Dec 23 18:40:57 CET 2009
; Version .......: 2.0
; ==============================================================================
Func _SplitArgs($s)
	Local $r[1] = [""], $t, $b1 = False, $b2 = False, $iP = 0

	For $i = 1 To StringLen($s)
		$t = StringMid($s, $i, 1)
		Select
			Case $t = " " And Not $b1 And Not $b2 And Not $iP
				ContinueLoop
			Case $t = '"' And $b1
				$b1 = False
			Case $t = '"' And Not $b2
				$b1 = True
			Case $t = "'" And $b2
				$b2 = False
			Case $t = "'" And Not $b1
				$b2 = True
			Case $t = ")" And $iP
				$iP -= 1
			Case $t = "("
				$iP += 1
			Case $t = "," And Not $b1 And Not $b2 And Not $iP
				$t = ''
				ReDim $r[UBound($r) + 1]
		EndSelect
		$r[UBound($r) - 1] &= $t
	Next

	If Not $r[0] Then Return SetError(1,0,$r)

	Return $r
EndFunc   ;==>_SplitArgs
