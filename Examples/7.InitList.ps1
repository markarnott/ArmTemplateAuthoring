param (
    $ResourceGroup = 'StupidArmTricks',
    $StorageAccountName = 'blobstgwhgfpnkgfzvoc'
)

Import-Module AzureRM

Write-Output "Storage Account List Operations"
Get-AzureRmProviderOperation -OperationSearchString "Microsoft.Storage/*" | `
          where {$_.Operation -like "*list*"} | Format-Table Operation

Write-Output "------"

$StorageAccount = Get-AzureRmStorageAccount $ResourceGroup -Name $StorageAccountName
If(-Not($StorageAccount)) {
    Write-Error "Cannot retrieve Storage Account - $StorageAccountName"
} Else {
    New-AzureStorageAccountSASToken -Service "Blob" -ResourceType "Service" -Context $StorageAccount.Context `
                         -Permission rl -ExpiryTime ((Get-Date).ToUniversalTime()).AddHours(2)
}
