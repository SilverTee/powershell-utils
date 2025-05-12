$Servers = @(
  "server1.example.com",
  "server2.example.com",
  "server3.example.com"
)

foreach ($Server in $Servers) {
  Write-Host "Attempting to restart server: $Server"
  try {
    Restart-Computer -ComputerName $Server -Force
    Write-Host "Successfully restarted server: $Server"
  }
  catch {
    Write-Host "Failed to restart server: $Server - $($_.Exception.Message)"
  }
}

Write-Host "Restart process complete."
