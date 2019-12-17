'Private Const SystemType = "ELive"    'Enderby Phone Floor Live
Private Const SystemType = "EDev"     'Enderby Development Environment

Function GetMTServerName()
    DebugPrint "Entered GetMTServerName"
    Dim GetServerNameMT
    Select Case SystemType
        Case "GDev","EDev"
            GetServerNameMT = " /ServerName:END-IDDS02"
        Case "GLive","ELive"            
			GetServerNameMT = " /ServerName:END-IPDS02"
	End Select		
	DebugPrint GetServerNameMT
	GetMTServerName=GetServerNameMT
	DebugPrint "Exited GetMTServerName"
End Function 