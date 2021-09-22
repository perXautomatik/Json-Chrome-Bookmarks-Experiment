
if((get-alias | where {$_.ReferencedCommand -match "fx"}) -eq $null){

Set-Alias fx "D:\PortableApps\6, Text,programming, x Editing\PortableApps\JsonParsingCmd\fx-win.exe" -option ReadOnly
}

# Usage
#    $ fx [code ...]               
#  Examples
#    $ echo '{"key": "value"}' | fx 'x => x.key'
#    value
#    $ echo '{"key": "value"}' | fx .key
#    value    
#    $ echo '[1,2,3]' | fx 'this.map(x => x * 2)'
#    [2, 4, 6]
#    $ echo '{"items": ["one", "two"]}' | fx 'this.items' 'this[1]'
#    two
#    $ echo '{"count": 0}' | fx '{...this, count: 1}'
#    {"count": 1}
#    $ echo '{"foo": 1, "bar": 2}' | fx ?
#    ["foo", "bar"]

$healthyJson = cat .\008b183c-ba86-4bf9-9195-2f06784b5066 | fx 'this[0]'
$ToNestedJson = $healthyJson | Tee-Object -Variable folder | fx 'this.name' | Tee-Object -Variable folderName | %{$folder} | fx 'this.windows'
$psObjectWithTypeHeader = ($ToNestedJson | ConvertFrom-Json ).psobject.properties.value


$flatListContentExposedStillToNested = $psObjectWithTypeHeader.PSObject.Properties | ForEach-Object { $_.Name; $_.Value }
$nothing = $psObjectWithTypeHeader | Get-Member -MemberType Property | ForEach-Object {$_.Name} #suggestedAlternative

$progress = $flatListContentExposedStillToNested | ConvertTo-Json | fx ? # four numerations, i supose the json now looks like entry,{},entry,{} but can't enter this as i have no name of the variables, or can fx?

#$error = $progress | fx 'this.map( x => x.)'
$justPrints1 = $progress | fx 'this[1]'
$goodReturns4 = $flatListContentExposedStillToNested | Measure-Object


function 
















#failed string manipulationTecknikes


$StringData = $psObjectWithTypeHeader | ConvertTo-Csv -NoTypeInformation | Select-Object -Skip 1

$hashtable = $StringData -replace '["]'
$notEscapedValues = $hashtable
$jsonBastard = $hashtable -replace '[@]' 
#$stringified = Convert-String -InputObject $jsonBastard
$stringIfied = "'$jsonBastard'"
$json2 = $jsonBastard | convertTo-json
$strangeCountTo727 = $json2 | fx ?



        function ConvertTo-Object($hashtable) 
        {
           $object = New-Object PSObject
           $hashtable.GetEnumerator() | 
              ForEach-Object { Add-Member -inputObject $object `
	  	        -memberType NoteProperty -name $_.Name -value $_.Value }
           $object
        }

        # ConvertTo-Object $hashtable

$StringData







$q.psobject.Properties





[regex]::unescape($StringData)

ConvertFrom-StringData -StringData $StringData -Delimiter '='

$hashback = Invoke-Expression (Get-Content -Raw .\hash.txt)


$q=((cat .\008b183c-ba86-4bf9-9195-2f06784b5066 |
      fx 'this[0]' | Tee-Object -Variable folder | fx 'this.name' | Tee-Object -Variable folderName |
      %{$folder} | fx 'this.windows' | ConvertFrom-Json ).psobject.properties.value)



      $q | ConvertTo-Json


#new-object psobject -Property $z      
      $z.psobject.properties | 
      |ConvertTo-Json| fx ?
            
      | Tee-Object -Variable name 
      
      
      | Tee-Object -Variable url 

      
      
      %{$folder} |
  
  & 'D:\OneDrive\TabSessionManager - Backup\fx.ps1'    
      echo '{"test": {"a":1, "b":2}}' | fx ?

[
    "test"
]

  & 'D:\OneDrive\TabSessionManager - Backup\fx.ps1'    
      echo '{"test": {"a":1, "b":2}}' | fx 'this.test'
{
  "a": 1,
  "b": 2
}

  & 'D:\OneDrive\TabSessionManager - Backup\fx.ps1'    
      echo '{"1": {"a":1, "b":2}}' | fx ?
[
  "1"
]

& 'D:\OneDrive\TabSessionManager - Backup\fx.ps1'    
      echo '{"1": {"a":1, "b":2}}' | fx 'x => x[]'