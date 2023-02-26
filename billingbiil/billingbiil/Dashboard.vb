Public Class Dashboard

    Private Sub Dashboard_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        For Each AvailableSerialPorts As String In IO.Ports.SerialPort.GetPortNames()

            ComboBox1.Items.Add(AvailableSerialPorts)
            ComboBox1.Text = AvailableSerialPorts
            SerialPort1.ReadTimeout = 2000

            bconnect.Visible = True
            bdisconnect.Visible = False
            TextBox1.ScrollBars = ScrollBars.Vertical

        Next
    End Sub

    Private Sub bconnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bconnect.Click
        SerialPort1.BaudRate = "9600"

        SerialPort1.PortName = ComboBox1.SelectedItem
        bconnect.Visible = False
        bdisconnect.Visible = True
        Timer1.Enabled = True
        If SerialPort1.IsOpen = False Then
            SerialPort1.Open()
            ToolStripStatusLabel3.Text = "Connected"
            ToolStripStatusLabel3.BackColor = Color.Green
        End If
    End Sub

    Private Sub bdisconnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bdisconnect.Click
        If SerialPort1.IsOpen = True Then
            SerialPort1.Close()
            ToolStripStatusLabel3.Text = "Disconnect"
            ToolStripStatusLabel3.BackColor = Color.Red
        End If


        bconnect.Visible = True
        bdisconnect.Visible = False

        Timer1.Enabled = False
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If SerialPort1.IsOpen = True Then

            Dim ReceivedMessage As String
            ReceivedMessage = SerialPort1.ReadChar

            TextBox1.Text = TextBox1.Text + ReceivedMessage + Environment.NewLine

            TextBox1.SelectionStart = TextBox1.TextLength
            TextBox1.ScrollToCaret()

        End If
    End Sub





    Private Sub Panel1_Paint(ByVal sender As System.Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles Panel1.Paint
        Panel1.AutoScroll = True
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        switchPanel(Form1)
    End Sub

    Sub switchPanel(ByVal Panel As Form)
        Panel1.Controls.Clear()
        Panel.TopLevel = False
        Panel1.Controls.Add(Panel)
        Panel.Show()
    End Sub

    
    
    
   
    
    
End Class