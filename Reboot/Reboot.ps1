$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Rebooting"
    Restart-Computer -Force
    sleep 20
}
else
{
    Write-Output "Reboot finished"
    Write-Output "Removing flag"
    Remove-Item $path
}
