# Get the JSON content from the file
$jsonContent = Get-Content -Path 'C:\Users\svejk\AppData\Roaming\Code\User\settings.json' -Raw

# Check if the content is being read properly
Write-Output "JSON content:"
Write-Output $jsonContent

# Parse the JSON content into a PowerShell object
$jsonObject = $jsonContent | ConvertFrom-Json

# Check if the JSON is parsed correctly
Write-Output "Parsed JSON:"
Write-Output $jsonObject

# Get the opacity value
$opacityValue = $jsonObject.background.opacity

# Check if the property is being accessed correctly
Write-Output "Opacity Value:"
Write-Output $opacityValue
