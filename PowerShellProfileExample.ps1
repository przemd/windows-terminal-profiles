function Connect-AzAccountForEnvironment {
    param(
        [Parameter(Mandatory)]$environment
    )
    
    if ($environment -match "Development") {
        Connect-AzAccount -Tenant "tenant1" -SubscriptionId "subscription1"
    }
    elseif ($environment -match "Staging") {
        Connect-AzAccount -Tenant "tenant2" -SubscriptionId "subscription2"
    }
}

$s = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$json = Get-Content $s | ConvertFrom-Json
$terminalName = ($json.profiles.list | Where-Object { $_.guid -eq $env:WT_PROFILE_ID }).name
Connect-AzAccountForEnvironment -environment $terminalName
