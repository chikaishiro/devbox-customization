$path = "~/flag"

if(!(Test-Path $path))
{
    "content" | Out-File -FilePath $path
    Write-Output "Reboot started"
    Restart-Computer -Force
}
else
{
    Write-Output "Reboot finished"
    Write-Output "Removing flag"
    Remove-Item $path
}
