# verbinding maken met SfB / Teams Online
import-module SkypeOnlineConnector
$sfbsession = New-CsOnlineSession
import-pssession $sfbsession


# Online Voice user ophalen
get-csonlineuser username

# Voice Routes ophalen
get-csonlinevoiceroute

# Voice Route aanmaken
New-CSONlineVoiceRoute -identiy Belgium -NumberPattern "^\+32(\d[9])$" -OnlinePSTNGatewayList "klantdomein.provider.tld"

# Aanmaken Auto Attendant via PowerShell

$GreetingPrompt = New-CsAutoAttendantPrompt -TextToSpeechPrompt “Welkom bij ons bedrijf"
$automaticMenuOption = New-CsAutoAttendantMenuOption -Action Disconnect -DtmfResponse Automatic
$Menu = New-CsAutoAttendantMenu -Name “Keuzemenu” -MenuOptions @($automaticMenuOption)
$CallFlow = New-CsAutoAttendantCallFlow -Name “Call Flow” -Greetings @($GreetingPrompt) -Menu $Menu
New-CsAutoAttendant -Name "Auto Attendant" -Language "NL-NL" -TimeZoneId "UTC" -DefaultCallFlow $CallFlow