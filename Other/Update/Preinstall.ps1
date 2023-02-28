# Run the pre-install script

# Remove the downloaded files to ensure 
# we don't look at a previous version.
If (Test-Path $DownloadDir) {
  (Get-ChildItem -Path $DownloadDir).Fullname | Foreach-Object {
    If ($_ -match '(.*\.exe|.zip|.*sum)$') {
      Remove-Item -Path $_
    }
  }
}
