#Get-ChildItem "C:\" | Foreach-Object @{$PSItem.FullName,$PSItem.Name}

Get-ChildItem env: | Select-Object 