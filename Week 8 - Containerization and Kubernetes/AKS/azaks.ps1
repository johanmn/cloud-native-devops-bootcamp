[CmdletBinding()]
param (

    $name = 'cloudskillsaks92',
    $rgName = 'AZ-400',
    $nodeCount = 1,
    $kubernetesVersion = '1.21.2'
)

az aks create --generate-ssh-keys `
              --name $name `
              --resource-group $rgName `
              --node-count $nodeCount `
              --kubernetes-version $kubernetesVersion