$localprograms = choco list --localonly
if ($localprograms -like "gpg4win*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade gpg4win
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install gpg4win -y
}