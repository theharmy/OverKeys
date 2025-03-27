param(
    [Parameter(Mandatory=$true)]
    [string]$Version
)

Remove-Item "D:\inno\LICENSE"
Compress-Archive -Path "D:\inno" -DestinationPath "D:\inno\overkeys_${version}_x64.zip"

cd ..