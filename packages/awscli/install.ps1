$localprograms = choco list --localonly
if ($localprograms -like "awscli*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade awscli
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install awscli -y
}