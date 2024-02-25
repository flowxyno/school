Clear-Host # Clears the screen

# Pings the filer server to make sure it is there
Write-Host "Pinging File Server.."
Test-Connection 192.168.252.100

Pause

# The process of starting and stopping the workstation service resets the network share
Write-Host "Stopping Workstation Service.."
try {
    Stop-Service -Name Workstation -Force -Verbose
} catch {
    Write-Host "Error stopping Workstation service: $_"
}

Pause

Write-Host "Starting Workstation Service.."
try {
    Start-Service -Name Workstation -Verbose
} catch {
    Write-Host "Error starting Workstation service: $_"
}

Pause

# Opens explorer.exe and attempts to connect to the file server
Write-Host "Establishing File Server Connection.."
try {
    Start-Process "explorer.exe" "\\192.168.252.100"
    Write-Host "File Server Connection Established!"
} catch {
    Write-Host "Error opening file server connection: $_"
}

Pause

Main_Menu.ps1