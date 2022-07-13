$sourceFile = "links.txt" # the source file containing the URLs you want to convert
$destFolder = "D:\ahmed_react\" # converted PDFs will be saved here. Folder has to exist.
$num = 1
foreach($link in [System.IO.File]::ReadLines($sourceFile))
{
  Write-Output $link $num
  
$outfile = $num.ToString() + '.pdf'
& 'C:\Program Files\Google\Chrome\Application\chrome.exe' --headless --print-to-pdf="$destFolder $outfile" $link
Start-Sleep -s 3
$num++
}

# Set-ExecutionPolicy Unrestricted {set to A}


# code for to get all thel links from the website
# var links = document.getElementsByTagName('a');

# for(var i = 0; i< links.length; i++){
#   // alert(links[i].href);
#     console.log(links[i].href)
# }
