param (
    $TemplateFile = '3.LoopTemplate.json',
    $ResourceGroup = 'NetConfRaleigh'
)

Import-Module AzureRM

$ParamObj = @{ numberOfInstances=3; }

New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup `
               -TemplateFile $TemplateFile `
               -TemplateParameterObject $ParamObj