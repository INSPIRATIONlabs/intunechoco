$localprograms = choco list --localonly
if ($localprograms -like "cascadiacodepl*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade cascadiacodepl
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install cascadiacodepl -y
}