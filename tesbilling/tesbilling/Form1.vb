Public Class Form1

    
    Dim Start1 As Date, Stop1 As Date
    Dim Harga As Long
    Dim Biaya1 As Long

    Function DateDiff() As Object
        Dim TotalDays As DateFormat
        Dim Years, Months, Days, hourse, minutes, seconds As DateFormat
        Dim bDetailed As Boolean
        Dim dStart, dEnd As DateSerial
        If bDetailed Then
            TotalDays = dEnd - dStart
            hourse = Hour(dStart - dEnd)
            minutes = Minute(dEnd - dStart)
            seconds = Second(dEnd - dStart)

            If hourse < 10 Then
                hourse = "0" & hourse
            ElseIf hourse > 9 Then
                hourse = hourse
            End If
            If minutes < 10 Then
                minutes = "0" & minutes
            ElseIf minutes > 9 Then
                minutes = minutes
            End If
            If seconds < 10 Then
                seconds = "0" & seconds
            ElseIf seconds > 9 Then
                seconds = seconds
            End If
            DateDiff = hourse & ":" & minutes & ":" & seconds
            Exit Function
        End If

    End Function

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Button1.Text = "mulai" Then
            Button1.Text = "stop"
            Timer1.Enabled = True
            Timer2.Enabled = True
            lJamMulai.Text = Format(Now, "Long Time")
            Start1 = Format(Now, "Long Time")
        ElseIf Button1.Text = "stop" Then
            Button1.Text = "mulai"
            Timer1.Enabled = False
            Timer2.Enabled = False
            lJamMulai.Text = Format(Now, "Long Time")
        End If
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Stop1 = Format(Now, "Long Time")
        lJamSekarang.Text = Format(Now, "Long Time")
        lDurasi = DateDiff(Start1, Stop1, True)

    End Sub

    Private Sub Timer2_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        Timer2.Tag = biaya1 + harga
        lBiaya.Text = ": " & Timer2.Tag & ",-"
        biaya1 = Timer2.Tag
    End Sub
End Class
