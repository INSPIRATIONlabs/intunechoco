$localprograms = choco list --localonly
if ($localprograms -like "poshgit*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade poshgit
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install poshgit -y
}