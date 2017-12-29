Imports System.Data
Imports System.EventArgs
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/04/24 --Cargar vista inicial
        If Not Page.IsPostBack Then
            Alertamail.Style("display") = "none"
        End If
    End Sub


    Protected Sub BtnEntrar_Click(sender As Object, e As EventArgs) Handles BtnEntrar.Click
        '--Creacion 2017/04/24
        '--Actualizacion 26/04/2017
        Try
            '--Sentencia query
            Dim sql_login As String = "Select TOP 1 Res='Y',T0.id From TU T0 Where T0.Usuario='" & username.Value & "' and T0.Contraseña='" & password.Value & "'"
            cnn.Open()
            cmd = New SqlClient.SqlCommand(sql_login, cnn)
            dr = cmd.ExecuteReader()
            Dim Resultado As String = Nothing
            '--------->Recorrer todos los registros de la consulta
            If dr.HasRows Then
                While dr.Read
                    Resultado = dr.Item("Res")
                    Session("id") = dr.Item("id")
                    'Reg = Reg + 1
                End While
            End If
            Alertamail.Style("display") = "none"
            cnn.Close()
            dr.Close()

            If Resultado = "Y" Then
                '--Sentencia Consulta nombre
                Dim sql_Datos As String = "Select Nombre=T0.Nombre,Apellidos=T0.Apellidos,Tipo=T0.Permisos " &
                                      "From TU T0 " &
                                      "Where T0.id='" & Session("id") & "'"
                cnn.Open()
                cmd = New SqlClient.SqlCommand(sql_Datos, cnn)
                dr = cmd.ExecuteReader()

                '--------->Recorrer todos los registros de la consulta
                If dr.HasRows Then
                    While dr.Read
                        'dr.Item("Nombre")
                        Session("NomUser") = dr.Item("Nombre")
                        Session("Apellidos") = dr.Item("Apellidos")
                        Session("Tipo") = dr.Item("Tipo").ToString()
                        'Reg = Reg + 1
                    End While
                End If

                cnn.Close()
                dr.Close()
                '--Ir a Pagina Principal
                Response.Redirect("HTML/index.aspx", False)
            Else
                Alertamail.Style("display") = "block"
            End If

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub
End Class
