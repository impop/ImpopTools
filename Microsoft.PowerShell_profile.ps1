function global:prompt {
    $PwdPath = Split-Path -Path $pwd -Leaf
    Write-Host -Object "$PwdPath" -NoNewline -ForegroundColor Magenta
 
    return "> "
}
 
#Import-Module posh-git
 
$omp_cache = "$env:TEMP\omp_init.ps1"
if (!(Test-Path $omp_cache) -or ((Get-Date) - (Get-Item $omp_cache).LastWriteTime).TotalDays -gt 1) {
    $CurrentPath = $PSScriptRoot
    oh-my-posh init pwsh --config "$CurrentPath\ohmyposh.nu4a.omp.json" | Out-File $omp_cache
}
. $omp_cache