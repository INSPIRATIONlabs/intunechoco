$localprograms = choco list --localonly
if ($localprograms -like "azure-cli*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade azure-cli
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install azure-cli -y
}