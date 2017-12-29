
Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Public Class Conecta

End Class

Public Module ConectaMod
    '-------------------------------------------------------------------------------------------------------------------------------------
    '--Creacion 2017/03/21
    '--Actualizacion 2017/04/24 
    '---Conexion sql CC
    Public ConnectionString As String = "Data Source=54.173.62.96; Initial Catalog=CapApp; User Id=sa; Password=Sapb1234"
    Public cnn As SqlConnection = New SqlConnection(ConnectionString)
    Public con As SqlConnection = New SqlConnection(ConnectionString)
    Public cmd, command As SqlCommand
    Public dr As SqlDataReader

End Module