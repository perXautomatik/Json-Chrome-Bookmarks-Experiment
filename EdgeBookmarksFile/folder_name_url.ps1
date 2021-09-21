. .\fx.ps1

cat .\Bookmarks | fx 'this.roots' 'this.bookmark_bar' 'this.children[0]' 'this.children[0]' 'this.children' | ConvertFrom-Json | format-table url,name -Wrap