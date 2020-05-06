# --- Set the uri for the latest release
$URI = "https://api.github.com/repos/microsoft/Microsoft-Win32-Content-Prep-Tool/releases/latest"

# --- Query the API to get the url of the zip
$Response = Invoke-RestMethod -Method Get -Uri $URI
$ZipUrl = $Response.zipball_url

# --- Download the file to the current location
$OutputPath = "$((Get-Location).Path)\work\"
If(!(test-path $OutputPath)) {
    New-Item -ItemType Directory $OutputPath
}
$fileName = "preptool.zip"
$combinedPath = $OutputPath + $fileName
Invoke-RestMethod -Method Get -Uri $ZipUrl -OutFile $combinedPath
Expand-Archive $combinedPath .\work\preptool