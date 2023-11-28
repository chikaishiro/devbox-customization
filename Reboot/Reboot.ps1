$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Rebooting version2"
    Restart-Computer -Force
}
else
{
    Write-Output "Reboot finished"
    Write-Output "Removing flag"
    Remove-Item $path
}
