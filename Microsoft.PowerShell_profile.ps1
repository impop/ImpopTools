function global:prompt {
    $PwdPath = Split-Path -Path $pwd -Leaf
    Write-Host -Object "$PwdPath" -NoNewline -ForegroundColor Magenta

    return "> "
}

Function kgp_function {
   $a = $args
   if ($args -eq "."){ $a = $pwd }
   kubectl get pods $a    
}
Function ka_function {
    $a = $args
    if ($args -eq "."){ $a = $pwd }
    kubectl apply $a
}

Function kaw_function {
    kubectl get pods -A -o wide
}

set-alias k kubectl
set-alias kgp kgp_function
set-alias ka ka_function
set-alias kaw kaw_function

Import-Module posh-git
Import-Module oh-my-posh
$CurrentPath = Split-Path $PSCommandPath -Parent
Set-PoshPrompt -Theme "$CurrentPath\ohmyposh.nu4a.omp.json"