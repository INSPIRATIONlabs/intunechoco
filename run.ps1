$dir = Get-ChildItem .\packages\ | ? {$_.PSIsContainer}
$dir | ForEach-Object {
    echo $_.fullname
    $fullpath = $_.fullname + "\install.ps1"
    $fullout = ".\output\" + $_.name
    $fullname = $_.FullName
    Start-Process -wait .\work\preptool\*\intunewinapputil.exe "-c `"$fullname`" -s `"$fullpath`" -o `"$fullout`" -q"
    $copyfiles = $_.FullName + "\*.ps1"
    echo $copyfiles 
    Copy-Item -Path $copyfiles -Destination $fullout\
}

