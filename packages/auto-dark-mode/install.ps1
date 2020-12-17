$localprograms = choco list --localonly
if ($localprograms -like "auto-dark-mode*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade auto-dark-mode
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install auto-dark-mode -y
}