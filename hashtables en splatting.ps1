# Opbouw van een hashtable
$hash1 = @{
        “key1” = “value1”
        “key2” = “value2”
       }


# Gebruik van splatting: cmdlet zonder splatting
Send-MailMessage -To me@mydomain.com -From me@mydomain.com -Subject “Hi” -Body “Hello” -SmtpServer smpthost -ErrorAction SilentlyContinue


# Gebruik van splatting: cmdlet met splatting
$MailMessage = @{
    To = “me@mycompany.com”
    From = “me@mycompany.com”
    Subject = “Hi”
    Body = “Hello”
    Smtpserver = “smtphost”
    ErrorAction = “SilentlyContinue”
}

Send-MailMessage @MailMessage
   