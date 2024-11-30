$adapterName = "Wi-Fi"

$adapter = Get-NetAdapter | Where-Object {$_.Name -eq $adapterName}

if ($adapter) {
    Disable-NetAdapter -Name $adapter.Name -Confirm:$false
    
    Start-Sleep -Seconds 3

    Enable-NetAdapter -Name $adapter.Name -Confirm:$false
} else {
    Write-Host "Unable to find adapter named '$adapterName'."
}
