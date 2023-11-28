$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Rebooting"
    Restart-Computer
}
else
{
    Write-Output "Reboot finished"
}