Public Class Dashboard

    
    
    
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