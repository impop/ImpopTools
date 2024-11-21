# PowerShell script to change metric for routes starting with "100." and make them persistent, with backup

# Step 1: get current routing table to a file in the current directory and backup
$backupFile = "$PWD\route_backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"
$routes = Get-NetRoute -InterfaceAlias "Tailscale" 
$routes | Select-Object DestinationPrefix, InterfaceIndex, NextHop | Out-File -FilePath $backupFile

Write-Host "Routing table backup saved to: $backupFile"

# Step 2: Filter routes where DestinationPrefix starts with "100."
$filteredRoutes = $routes | Where-Object { $_.DestinationPrefix -like "100.*" }

# Step 3: Loop through each filtered route and set the metric to 502, making it persistent
foreach ($route in $filteredRoutes) {
    # First, remove the existing route
    Remove-NetRoute -DestinationPrefix $route.DestinationPrefix -InterfaceIndex $route.InterfaceIndex -Confirm:$false

    # Then, re-add the route with the new metric and make it persistent
    New-NetRoute -DestinationPrefix $route.DestinationPrefix -InterfaceIndex $route.InterfaceIndex -NextHop $route.NextHop -RouteMetric 502 

    Write-Host "Updated route: $($route.DestinationPrefix) on interface $($route.InterfaceIndex) to metric 502."
}