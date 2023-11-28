$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Rebooting version2"
    Restart-Computer -Force
    sleep 20
}
else
{
    Write-Output "Reboot finished"
    Write-Output "Removing flag"
    Remove-Item $path
}
