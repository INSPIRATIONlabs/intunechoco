$localprograms = choco list --localonly
if ($localprograms -like "adobereader*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade adobereader
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install adobereader -y
}