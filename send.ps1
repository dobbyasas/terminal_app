$mode = Read-Host -Prompt 'What are we (secured / horny)?'
$run = $true

$jsonContent = Get-Content -Path 'C:\Users\svejk\AppData\Roaming\Code\User\settings.json' | ConvertFrom-Json

switch ($mode)
{
    "secure" {
        'mode was set to secure, i got you bro'
        $secureContent = '{
            "php.validate.executablePath": "c:/xampp/php/php.exe",
            "liveServer.settings.donotVerifyTags": true,
            "editor.minimap.enabled": false,
            "workbench.editorAssociations": {
                "*.md": "default"
            },
            "editor.accessibilitySupport": "on",
            "redhat.telemetry.enabled": true,
            "powermode.combo.counterEnabled": "show",
            "powermode.combo.location": "editor",
            "powermode.enabled": true,
            "powermode.shake.enabled": false,
            "files.eol": "\n",
            "workbench.iconTheme": "eq-material-theme-icons-darker",
            "workbench.colorTheme": "Ariake Dark",
            "background.fullscreen": {
                "image": "https://img.freepik.com/premium-vector/smooth-color-wave-vectorcurved-lines-rainbow-abstract-multicolored-wave-flow_206325-1410.jpg",
                "opacity": 1,
                "size": "cover",
                "position": "center",
                "interval": 0
            }
        }
        '        

        $newJsonContent = $secureContent | ConvertTo-Json -Depth 20
        $newJsonContent | Set-Content -Path 'C:\Users\svejk\AppData\Roaming\Code\User\settings.json'

        }

    "horny" {
        'mode was set to horny, good luck brother'
        $hornyContent = '{
            "php.validate.executablePath": "c:/xampp/php/php.exe",
            "liveServer.settings.donotVerifyTags": true,
            "editor.minimap.enabled": false,
            "workbench.editorAssociations": {
                "*.md": "default"
            },
            "editor.accessibilitySupport": "on",
            "redhat.telemetry.enabled": true,
            "powermode.combo.counterEnabled": "show",
            "powermode.combo.location": "editor",
            "powermode.enabled": true,
            "powermode.shake.enabled": false,
            "files.eol": "\n",
            "workbench.iconTheme": "eq-material-theme-icons-darker",
            "workbench.colorTheme": "Ariake Dark",
            "background.fullscreen": {
                "image": "https://img.freepik.com/premium-vector/smooth-color-wave-vectorcurved-lines-rainbow-abstract-multicolored-wave-flow_206325-1410.jpg",
                "opacity": 0.8,
                "size": "cover",
                "position": "center",
                "interval": 0
            }
        }
        '

        $newJsonContent = $hornyContent | ConvertTo-Json -Depth 20
        $newJsonContent | Set-Content -Path 'C:\Users\svejk\AppData\Roaming\Code\User\settings.json'
        }

        default {
        'unknown command, try again'
        .\send.ps1
    }
}
