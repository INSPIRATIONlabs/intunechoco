$localprograms = choco list --localonly
if ($localprograms -like "git*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade git
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install git -y
}