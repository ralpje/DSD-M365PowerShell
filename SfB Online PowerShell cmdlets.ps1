import-module SkypeOnlineConnector
$sfbsession = New-CsOnlineSession
import-pssession $sfbsession





$user = get-csonlineuser username





get-csonlinevoiceroute
Get-CsOnlinePSTNGateway