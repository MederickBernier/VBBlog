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
%>