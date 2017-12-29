Imports System.Data
Imports System.EventArgs

Partial Class HTML_user
    Inherits System.Web.UI.Page
    Protected Sub LlenarTabla(ByVal Sql As String)
        '--Creacion 2017/03/21 Llenar GV
        '--Update 2017/03/24

        'Dim Reg As Integer = Nothing
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTable As New DataTable()
            DataTable.Columns.AddRange(New DataColumn() {
                                                       New DataColumn("Id", GetType(String)),
                                                       New DataColumn("Usuario", GetType(String)),
                                                       New DataColumn("Contra", GetType(String)),
                                                       New DataColumn("Nombre", GetType(String)),
                                                       New DataColumn("Apellidos", GetType(String)),
                                                       New DataColumn("Depa", GetType(String)),
                                                       New DataColumn("Empresa", GetType(String)),
                                                       New DataColumn("Edad", GetType(String)),
                                                       New DataColumn("Permisos", GetType(String))})
            cnn.Open()
            cmd = New SqlClient.SqlCommand(Sql, cnn)
            dr = cmd.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            If dr.HasRows Then
                While dr.Read
                    DataTable.Rows.Add(dr.Item("Id"),
                                        dr.Item("Usuario"),
                                        dr.Item("Contra"),
                                        dr.Item("Nombre"),
                                        dr.Item("Apellidos"),
                                        dr.Item("Depa"),
                                        dr.Item("Empresa"),
                                        dr.Item("Edad"),
                                        dr.Item("Permisos"))
                    'Reg = Reg + 1
                End While
            End If

            cnn.Close()
            dr.Close()

            '----Agregar los datos a gridview
            GvUsuarios.DataSource = DataTable
            GvUsuarios.DataBind()

            '--ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('Registros Encontrados: " & Reg & "');  ", True)

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/03/21 --Cargar vista inicial
        '--actualizacion 2017/03/24
        If Not Page.IsPostBack Then

            Dim SqlUsuarios As String = "Select T0.Id, T0.Usuario, T0.Contraseña as 'Contra', T0.Nombre, T0.apellidos, T0.Departamento as 'Depa'," &
                                         "T0.empresa, T0.Edad, T0.Permisos From TU T0"
            LlenarTabla(SqlUsuarios)
        End If
    End Sub


End Class
