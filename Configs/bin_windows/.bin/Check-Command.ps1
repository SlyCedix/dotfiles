param(
    [string]$cmdname
)

return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)