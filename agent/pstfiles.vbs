Set Shell = CreateObject("wscript.Shell")
Set env = Shell.environment("Process")

strComputer = env.Item("Computername")

set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
set colFiles = objWMIService.ExecQuery ("Select * from CIM_DataFile Where Extension = 'pst' and Drive = 'C:' ")

'*** Boucle For pour lister tous les fichiers qui ont l'extension "pst"
For Each objFile in colFiles
    Wscript.Echo _
	"<PSTFILES>" & vbCrLf & _
	"<FILEPATH>" & objFile.Drive & objFile.Path & "</FILEPATH>" & vbCrLf & _
    "<FILENAME>" & objFile.FileName & "." & objFile.Extension & "</FILENAME>" & vbCrLf & _
    "<FILESIZE>" & objFile.FileSize & "</FILESIZE>" & vbCrLf & _
    "</PSTFILES>"
Next

'*** Destruction des objets
Set Shell = Nothing
Set env = Nothing

WScript.Quit
