param (
    $subscriptionId = "10185b92-8397-4ca8-9235-515c99af0782",
    $ResourceGroup = 'StupidArmTricks'
)

#Install-Module AzureRM

Import-Module AzureRm

Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionID $subscriptionId;

$myRG = Get-AzureRmResourceGroup -Name $ResourceGroup
If($myRG -eq $null) {
    Write-Output "Creating $ResourceGroup"
    New-AzureRmResourceGroup -Name $ResourceGroup -Location "eastus2"
}
