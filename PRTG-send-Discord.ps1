param(
    [string]$sensor = "Ping",
    [string]$sensorid = 0,
    [string]$status = "Down",
    [string]$message = "Script launched without parameters (DEBUG)",
    [string]$device = "myWorkstationName",
    [string]$since = "falsetime",
    [string]$lastup = "falsetime",
    [string]$sensorURL = "http://www.google.com",
    [string]$deviceURL = "http://www.google.com",
    [string]$serviceURL = "http://www.google.com"
)

# Discord Webhook URL, please paste your webhook into this link
$webhookUrl = "https://discord.com/api/webhooks/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# PRTG Notification Parameters
$message_send = "Time: "+"$since"+" | "+"Device: "+"$device"+" | Sensor: "+"$sensor $name ($status) $down ($message)"
$webhookMessage = @{
	    content = $message_send
}

# Convert the PowerShell object to JSON
$jsonMessage = $webhookMessage | ConvertTo-Json

# Send the message to Discord
Invoke-RestMethod -Uri $webhookUrl -Method Post -Body $jsonMessage -ContentType "application/json"
