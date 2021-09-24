
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
# Pass a few JSON files.
#
# cat foo.json bar.json baz.json | fx .message
# Use full power of JavaScript.
# $ curl ... | fx '.filter(x => x.startsWith("a"))'
#Access all lodash (or ramda, etc) methods by using .fxrc file.
#
#$ curl ... | fx '_.groupBy("commit.committer.name")' '_.mapValues(_.size)'
#Update JSON using spread operator.

#$ echo '{"count": 0}' | fx '{...this, count: 1}'
#{
  #"count": 1
#}
#Extract values from maps.

#$ fx commits.json | fx .[].author.name
#Print formatted JSON to stdout.

#$ curl ... | fx .
#Pipe JSON logs stream into fx.

#$ kubectl logs ... -f | fx .message
#And try this:

#$ fx --life

. 'D:\Documents\WindowsPowerShell\Scripts\pipe-objects-into-arrays.ps1'

. 'D:\Documents\WindowsPowerShell\Scripts\json\UnnestJson.ps1'


$healthyJson = cat .\008b183c-ba86-4bf9-9195-2f06784b5066 | fx 'this[0]' 
$ToNestedJson = $healthyJson | Tee-Object -Variable folder | fx 'this.name' | Tee-Object -Variable folderName | %{$folder} | fx 'this.windows'
$psObjectWithTypeHeader = ($ToNestedJson | ConvertFrom-Json ).psobject.properties.value


$flatListContentExposedStillToNested = $psObjectWithTypeHeader.PSObject.Properties | ForEach-Object { $_.Name; $_.Value }
$flatListContentExposedStillToNested



$trueJsonChildNode = $flatListContentExposedStillToNested[1] | ConvertTo-Json | fx 
$trueJsonChildNode


$psObjects = $healthyJson | ConvertFrom-Json 

$psObjects |%{
    $folderName = $_ | Select-Object name 
    $folderName
    
 $_ | convertTo-json | fx 'this.windows' |
 
 unnest | fx | %{$_ | fx 'this' } 
 
 #| ConvertFrom-Json
 
 
 #|  Select-Object title,url
}







