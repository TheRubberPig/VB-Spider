Sub TelephoneDepartment(Dest)

DebugPrint "Entered TelephoneDepartment at " & Now()

If Dest=40 Then
    if IsDepartmentOpen(40) Then
        DepartmentalTransfer Dest,False,0
    Else
        ShowPageShim "Screen8","UnFocusCon.htm"
        ShowPageShim "Screen8","NextranetDisplayCon.htm"
    End If
Else
    DepartmentalTransfer Dest,False,0
End If

DebugPrint "Exited TelephoneDepartment at " & Now()

End Sub

Sub CompleteTransfer()

DebugPrint "Entered CompleteTransfer at " & Now()

Dim Result 

MoveScripts = False
Set Result = CALL_SLOT1.Transfer
NUM_ACTIVE_SCRIPTS = 1
DebugPrint " Request result = " & Result.Description

DebugPrint "Exited CompleteTransfer at " & Now()

End Sub 

Sub RetrieveToInitialScript()

DebugPrint "Entered RetrieveToInitialScript  at " & Now()

MoveScripts = True
RetrieveCall
GotoCallOptions

DebugPrint "Exited RetrieveToInitialScript  at " & Now()

End Sub

