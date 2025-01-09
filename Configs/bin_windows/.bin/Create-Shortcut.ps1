param(
    [string]$Source,
    [string]$Destination
)

$Source = [IO.Path]::GetFullPath($Source)
$Destination = [IO.Path]::GetFullPath($Destination)

$shell = New-Object -comObject WScript.Shell
$shortcut = $shell.CreateShortcut("$Destination.lnk")
$shortcut.TargetPath = "$Source"
$shortcut.Arguments = "$Arguments"
$shortcut.Save()