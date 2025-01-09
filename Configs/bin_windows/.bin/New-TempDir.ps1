$tmp = ([System.IO.Path]::GetTempPath()) # Not $env:TEMP, see https://stackoverflow.com/a/946017
$name = ((New-Guid).ToString("N"))
$tmp_path = (Join-Path $tmp $name)
(New-Item -ItemType Directory -Path $tmp_path) > $null
return $tmp_path