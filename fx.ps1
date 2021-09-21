
if((get-alias | where {$_.ReferencedCommand -match "fx-win"}) -eq $null){

Set-Alias fx "D:\PortableApps\6, Text,programming, x Editing\PortableApps\JsonParsingCmd\fx-win.exe" -option ReadOnly
}