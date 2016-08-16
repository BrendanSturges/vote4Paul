$url = "http://www.cbs.com/shows/big_brother/americas-care-package/"

for($i = 1; $i -le 20; $i++){
	$ie = New-Object -com internetexplorer.application
	$ie.navigate($url)
	$ie.visible = $true
	start-sleep 1;
	$ie.Navigate("Javascript:processVote(this, 9137, 'Paul', 'true');")
	start-sleep 1;
	Write-Host "You voted for YA BOI $i times!  THAT'S FRIENDSHIP"
	$ie.quit()
	[System.Runtime.Interopservices.Marshal]::ReleaseComObject($ie) | Out-Null
}