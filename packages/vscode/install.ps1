$localprograms = choco list --localonly
if ($localprograms -like "vscode*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade vscode
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install vscode -y
}