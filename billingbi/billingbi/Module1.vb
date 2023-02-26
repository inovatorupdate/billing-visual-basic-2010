Module Module1


    Public Sub scanportarduino()
        If  = False Then
            '***********************
            'Scaning Port
            '*************************

            On Error Resume Next

            Dim i As Integer

            For i = 1 To 100
                MSComm1.CommPort = i
                MSComm1.PortOpen = True

                If MSComm1.PortOpen Then

                    NoPort = i
                    MSComm1.CommPort = NoPort 'Port ARDUINO
                    ' 9600 baud, Even parity, 7 data, and 2 stop bit.
                    MSComm1.Settings = "9600,N,8,1"
                    MSComm1.PortOpen = True
                    MSComm1.DTREnable = True
                    MSComm1.RTSEnable = True
                    MSComm1.RThreshold = 1
                    MSComm1.InputLen = 1
                Else
                End If
            Next

            'ketika CONNECT

            MsgBox("connected successfuly")
            cpannel.Caption = "DISCONNECTED"  'tampilkan tulisan disconnect di tombol ketika sudah tersambung

        Else

            'ketika  DISCONNECT

            MSComm1.PortOpen = False
            MSComm1.DTREnable = False
            MSComm1.RTSEnable = False
            MSComm1.RThreshold = 1
            MSComm1.InputLen = 1
            MsgBox("Disconnected Succesfuly")
            cpannel.Caption = "CONNECTED"     'tampilkan tulisan connect di tombol ketika belum tersambung
        End If

    End Sub


End Module
