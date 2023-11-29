$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Reboot Delay Started"
    Restart-Computer -Force
    sleep 20
}
else
{
    Write-Output "Reboot Delay finished"
    Write-Output "Removing flag"
    Remove-Item $path
}
