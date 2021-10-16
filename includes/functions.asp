<%
sub writeCurrentTime()
    Response.Write(Now)
end sub

sub writeRandomString(length)
    alpha = Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
    Dim min, max, randomNumber, returnString
    min = LBound(alpha)
    max = Ubound(alpha)

    Randomize

    for i = 1 to length
        randomNumber = Int((max-min+1)*Rnd+min)
        returnString = returnstring & alpha(randomNumber)
    Next

   Response.Write(returnString)
    returnString = ""
end sub

sub displayWithDoubleQuotes(s)

    tempString = """" & s & """"

    Response.Write(tempString)

end sub

Function returnWithDoubleQuotes(s)
    set tempString = """" & s & """"

    retrurnwithDoubleQuotes = tempString

end Function

Function sessionActive()
    if Session("isActive") Then
        sessionActive = True
    Else
        sessionActive = False
    End If
end Function

'this section will contain the functions and procedures concerning the component based system that i'm working on.'

Function ComponentExists(componentName)
    Dim fs, componentPath
    set fs = Server.CreateObject("Scripting.FileSystemObject")
    set componentPath = returnWithDoubleQuotes("/components/"&componentName)

    If(fs.FolderExists(componentPath)) = true Then
        ComponentExists = True
    Else
        ComponentExists = False
    End If
End Function

Sub Component(componentName)
    Dim includePath

    If ComponentExists(componentName) = True Then
        set includePath = returnWithDoubleQuotes("components/"&componentName&".asp")
        Response.write("<!--#include file="&includePath&"-->")
    Else
        Response.Write("The Component couldn't be found")
    End If
End Sub

%>