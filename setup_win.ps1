function Check-Command($cmdname)
{
    return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)
}

if (-Not (Check-Command -cmdname 'scoop')) 
{
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

if (-Not (Check-Command -cmdname 'cargo'))
{
    scoop install rustup
}

if (-Not (Check-Command -cmdname 'tuckr'))
{
    cargo install --git https://github.com/RaphGL/Tuckr.git
}

tuckr rm *
tuckr set * -fy
tuckr add * -fy