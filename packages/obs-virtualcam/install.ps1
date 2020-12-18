$localprograms = choco list --localonly
if ($localprograms -like "obs-virtualcam*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade obs-virtualcam
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install obs-virtualcam -y
}