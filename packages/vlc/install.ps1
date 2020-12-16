$localprograms = choco list --localonly
if ($localprograms -like "vlc *")
{
    C:\ProgramData\chocolatey\bin\choco upgrade vlc
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install vlc -y
}