$mailboxes = get-exomailbox | where {$_.displayname -ne 'Discovery Search Mailbox'}
foreach ($mailbox in $mailboxes) {
    Get-MailboxStatistics -Identity $mailbox.identity | select DisplayName, TotalItemSize

}