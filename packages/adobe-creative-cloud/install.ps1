$localprograms = choco list --localonly
if ($localprograms -like "adobe-creative-cloud*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade adobe-creative-cloud
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install adobe-creative-cloud -y
}