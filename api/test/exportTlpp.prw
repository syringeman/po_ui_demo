User Function TLPPIncs()
  Local lRet := .F.
  Local cRet := ""
  Local aMessages := {}
  Local nI := 0

  ConOut("Getting TLPP includes ...")
  lRet := tlpp.environment.getIncludesTLPP(@cRet, @aMessages)

  If(lRet != .T.)
    ConOut("Error: " + cValToChar(cRet))
    For nI := 1 to Len(aMessages)
      ConOut(cValToChar(nI) + " Error: " + cValToChar(aMessages[nI]))
    Next
  Else
    ConOut("OK. 'includes' extracted on path: " + cValToChar(cRet))
  EndIf
Return lRet
