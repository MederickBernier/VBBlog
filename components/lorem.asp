<%
Class Lorem
    Public Function Render
        Dim filename : filename = Server.MapPath("/components/lorem/lorem.asp")
        Dim fso : Set fso = Server.CreateObject("Scripting.FileSystemObject")
        Dim fs : Set fs = fso.OpenTextFile(filename,1)

        If Not fs.AtEndOfStream Then Render = fs.ReadAll

        Set fs = Nothing
        Set fso = Nothing
    End Function
End Class
%>