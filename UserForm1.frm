VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   3036
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   4584
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
    Dim filePath As String
    filePath = "main.wasm"
    Dim a As Byte
    Dim wasm() As Variant
    wasm = Array(0, &H61, &H73, &H6D, &H1, &H0, &H0, &H0, &H1, &H7, &H1, &H60, &H2, &H7F, &H7F, &H1, &H7F, &H3, &H2, &H1, &H0, &H7, &H7, &H1, &H3, Asc("s"), Asc("u"), Asc("m"), &H0, &H0, &HA, &H9, &H1, &H7, &H0, &H20, &H0, &H20, &H1, &H6A, &HB)

    Dim i As Long
    Dim fileno As Integer
    fileno = FreeFile

    Open filePath For Binary Access Write As #1
        For i = LBound(wasm) To UBound(wasm)
            a = wasm(i)
            Put #1, , a
        Next i
    Close #1

    MsgBox "Ficheiro main.wasm criado em: " & filePath, vbInformation
End Sub


Private Sub UserForm_Click()

End Sub
