param (
    $TemplateFile = '2.DependencyTemplate.json',
    $ResourceGroup = 'StupidArmTricks'
)

Import-Module AzureRM

$ParamObj = @{ batchAccountName="demobat1"; }

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile `
               -TemplateParameterObject $ParamObj