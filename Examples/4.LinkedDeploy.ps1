param (
    $TemplateFile = '4.LinkedTemplate.json',
    $ResourceGroup = 'StupidArmTricks'
)

Import-Module AzureRM

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile 
