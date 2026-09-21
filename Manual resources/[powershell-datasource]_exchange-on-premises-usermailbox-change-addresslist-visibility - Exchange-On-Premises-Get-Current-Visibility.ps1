$enabled = [bool]::Parse($datasource.selectedmailbox.HiddenFromAddressListsEnabled)

write-information $enabled
Write-Output @{ enabled = $enabled }
