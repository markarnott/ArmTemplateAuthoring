param (
    $TemplateFile = '1.SimpleTemplate.json',
    $ResourceGroup = 'StupidArmTricks'
)

Import-Module AzureRM

$ParamObj = @{ param1="Arm"; }

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile `
               -TemplateParameterObject $ParamObj