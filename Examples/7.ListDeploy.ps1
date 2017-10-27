param (
    $TemplateFile = '7.ListTemplate.json',
    $ResourceGroup = 'StupidArmTricks'
)

Import-Module AzureRM

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile 