$localprograms = choco list --localonly
if ($localprograms -like "7zip*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade 7zip
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install 7zip -y
}