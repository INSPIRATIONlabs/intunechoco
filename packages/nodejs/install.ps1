$localprograms = choco list --localonly
if ($localprograms -like "nodejs*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade nodejs
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install nodejs -y
}