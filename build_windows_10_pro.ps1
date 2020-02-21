param([string] $Only,
       [string]$Token)


$env:PACKER_LOG = 0
$env:PACKER_LOG_PATH = 'C:\logs\windows_10_pro.log'
$args = ('--var', 'iso_checksum=2C11C878D1631AD53CF3B90B1E853263AF2C18313B15B54A911B91ACAACD75E6',
       "--var", "iso_url=C:/users/javier/Downloads/windows_10_pro_x64_new.iso",
       "--var", "disk_size=136400", "--var", "windows10_edition=pro",
       "--var","cloud_token=$Token")

if ($Only) { $args += "--only=$Only-iso" }

$args += "windows_10.json"

packer build @args


