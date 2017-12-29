Imports System.Data
Imports System.EventArgs
Partial Class HTML_Nuser
    Inherits System.Web.UI.Page

    Protected Sub Cargardatos()

        Try

            Dim sql_datos As String = "SELECT TOP 1 (id+1) as 'Id' FROM TU ORDER BY id DESC"

            cnn.Open()
            cmd = New SqlClient.SqlCommand(sql_datos, cnn)
            dr = cmd.ExecuteReader()

            If dr.HasRows Then
                While dr.Read
                    Iid.Value = dr.Item("Id")
                End While
            End If

            cnn.Close()
            dr.Close()

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.GetType(), "aleasrt", "alert('" & fail & "');", True)
        End Try
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--creacion 26/04/2017
        If Not Page.IsPostBack Then
            Cargardatos()
        End If
    End Sub

    Protected Sub BtnGuardar_Click(sender As Object, e As EventArgs) Handles BtnGuardar.Click
        '--creacion 28/12/2017 guardar datos
        Try
            Dim SqlGuardar As String = "Insert Into TU Values('" & Iid.Value & "','" & IUsuario.Value & "','" & IContra.Value & "','" & INombre.Value & "','" &
                                    IApellidos.Value & "','" & IDepa.Value & "','" & SEmpresa.Value & "','" & IEdad.Value & "','" & SPermisos.Value & "')"

            cnn.Open()
            cmd = New SqlClient.SqlCommand(SqlGuardar, cnn)
            dr = cmd.ExecuteReader()
            cnn.Close()
            dr.Close()

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.GetType(), "aleasrt", "alert('" & fail & "');", True)
        End Try
        Limpiar()
    End Sub

    Protected Sub Limpiar()
        Response.Redirect("Nuser.aspx")

    End Sub


End Class
