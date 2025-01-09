param(
    [string]$bucket,
    [string]$package
)

if ((((scoop list) | Where-Object {($_.Name -eq $package) -And ($_.Source -eq $bucket)}).Count) -eq 0) {
    if ((((scoop bucket list) | Where-Object { $_.Name -eq $bucket }).Count) -eq 0)
    {
        scoop bucket add $bucket
    }

    scoop install $bucket/$package
    return $true
}

return $false