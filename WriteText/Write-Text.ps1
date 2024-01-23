param(
    [Parameter()]
    [int]$NumParam,

    [Parameter()]
    [string]$StringParam,

    [Parameter()]
    [boolean]$BoolParam
)

Write-Output "NumParam value is $NumParam"
Write-Output "StringParam value is $StringParam"
Write-Output "BoolParam value is $BoolParam"