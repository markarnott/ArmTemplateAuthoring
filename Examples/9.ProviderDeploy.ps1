param (
    $TemplateFile = '9.ProviderTemplate.json',
    $ResourceGroup = 'StupidArmTricks'
)

Import-Module AzureRM

#$ParamObj = @{ numberOfInstances=3; }

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile 