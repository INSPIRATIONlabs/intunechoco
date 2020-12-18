$localprograms = choco list --localonly
if ($localprograms -like "obs-studio*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade obs-studio
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install obs-studio -y
}