﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.32
@EndOfDesignText@
Sub Class_Globals
	Private fx As JFX
	Private tokenizerJO As JavaObject
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize
	tokenizerJO.InitializeNewInstance("com.atilika.kuromoji.ipadic.Tokenizer",Null)
End Sub

Public Sub Tokenize(text As String) As List
	Dim tokens As List = tokenizerJO.RunMethod("tokenize",Array(text))
    Return tokens
End Sub

