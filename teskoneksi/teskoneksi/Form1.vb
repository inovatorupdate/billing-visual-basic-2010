Imports System.IO
Imports System.IO.Ports
Imports System.Threading

Public Class Form1

    Shared _continue As Boolean
    Shared _serialPort As SerialPort


    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        For Each AvailableSerialPorts As String In IO.Ports.SerialPort.GetPortNames()
            ComboBox1.Items.Add(AvailableSerialPorts)
            ComboBox1.Text = AvailableSerialPorts
            SerialPort1.ReadTimeout = 2000
            Button1.Visible = True
            Button2.Visible = False
            TextBox1.ScrollBars = ScrollBars.Vertical
        Next
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        SerialPort1.BaudRate = "9600"
        SerialPort1.PortName = ComboBox1.SelectedItem
        Button1.Visible = False
        Button2.Visible = True
        Timer1.Enabled = True
        If SerialPort1.IsOpen = False Then
            SerialPort1.Open()
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If SerialPort1.IsOpen = True Then
            SerialPort1.Close()
        End If
        Button1.Visible = True
        Button2.Visible = False
        Timer1.Enabled = False
    End Sub



    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If SerialPort1.IsOpen = True Then
            Dim ReceivedMessage As String
            ReceivedMessage = SerialPort1.ReadExisting
            TextBox1.Text = ReceivedMessage + Environment.NewLine
            TextBox1.SelectionStart = TextBox1.TextLength
            TextBox1.ScrollToCaret()
        End If
    End Sub


    Private Sub bon_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bon.Click
        SerialPort1.Write("A")
    End Sub

    Private Sub boff_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles boff.Click
        SerialPort1.Write("a")
    End Sub
End Class
