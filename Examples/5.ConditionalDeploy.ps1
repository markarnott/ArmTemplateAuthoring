param (
    $TemplateFile = '5.ConditionalTemplate.json',
    $ResourceGroup = 'StupidArmTricks',
    [switch]$UseBlobStorage
)

Import-Module AzureRM

If($UseBlobStorage) {
    Write-Output "Create a Blob Storage Account"
    $ParamObj = @{
        storageAcctName="Stg"; 
        useBlobStorage=$true; }
} Else {
    Write-Output "Create a Standard Storage Account"
    $ParamObj = @{ 
        storageAcctName="Stg";
        useBlobStorage=$false; }
}

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile `
               -TemplateParameterObject $ParamObj