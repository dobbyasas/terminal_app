$mode = Read-Host -Prompt 'What are we (secured / horny)?'
$run = $true


switch ($mode)
{
    "secure" {
        'mode was set to secure, i got you bro'
        }
    "horny" {
        'mode was set to horny, good luck brother'
        }
        default {
        'unknown command, try again'
        .\send.ps1
    }
}
