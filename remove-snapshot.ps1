#remove snapshot from vcenter
$vcenter_server ="ip"
$vcenter_user =""
$vcenter_pwd =""
Write-Host("Connecting to vcenter...")
Connect-VIServer -Server $vcenter_server -User $vcenter_user -Password $vcenter_pwd
$VMs = Get-Content -LiteralPath vmnames.txt
$snap = Get-VM  $VMs |  get-snapshot
remove-snapshot -snapshot $snap -confirm:$false
