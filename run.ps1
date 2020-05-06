$dir = Get-ChildItem .\packages\ | ? {$_.PSIsContainer}
$dir | ForEach-Object {
    echo $_.fullname
    $fullpath = $_.fullname + "\install.ps1"
    $fullout = ".\output\" + $_.name
    .\work\preptool\*\intunewinapputil.exe -c $_.FullName -s $fullpath -o $fullout -q
    $copyfiles = $_.FullName + "\*.ps1"
    Copy-Item -Path $copyfiles -Destination $fullout\
}