import-module SkypeOnlineConnector
$sfbsession = New-CsOnlineSession
import-pssession $sfbsession
$user = get-csonlineuser voip-config
get-csonlinevoiceroute
Get-CsOnlinePSTNGateway