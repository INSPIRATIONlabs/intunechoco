$localprograms = choco list --localonly
if ($localprograms -like "IrfanView*")
{
    C:\ProgramData\chocolatey\bin\choco upgrade IrfanView
}
Else
{
    C:\ProgramData\chocolatey\bin\choco install IrfanView -y
}