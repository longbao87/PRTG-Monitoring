# prtg-notifications-discord
Discord notifications from Paessler's PRTG monitoring.

<pre>
 ___ ___ _____ ___
| _ \ _ \_   _/ __|
|  _/   / | || (_ |
|_| |_|_\ |_| \___|
    NETWORK MONITOR
-------------------
  
Description: This notification script will send to your Discord Channel  
Parameters:
   [string]$sensor        - the name of the sensor
   [string]$sensorid      - the id of the sensor
   [string]$status        - the status 
   [string]$message       - the message of the sensor 
   [string]$since         - the time since the state is like this
   [string]$lastup        - the time the sensor was up last
   [string]$device        - the device of the sensor
   [string]$sensorURL     - the sensor URL so you can access it directly
   [string]$deviceURL     - the device URL 
   [string]$serviceURL    - the service URL

Requirements
------------------
- [IMPORTANT] PRTG Sample powershell scripts must work - Guide for installing PowerShell based sensors: https://kb.paessler.com/users/my_answers/71356
- A webhook for your channel (see https://support.discordapp.com/hc/en-us/articles/228383668-Intro-to-Webhooks)
- This script located in <PRTG Home directory>\Notifications\EXE\ eg C:\Program Files (x86)\PRTG Network Monitor\Notifications\EXE
- Create a notification template
    -Sample sensor list: -sensor '%sensor' -sensorID '%sensorid' -status '%status' -message '%message' -since '%since' -lastup '%lastup' -device '%device' -sensorURL '%linksensor' -deviceURL '%linkdevice' -serviceURL '%serviceurl'

Modification Resources
The script I adapted this from (MSTeams Notifications) Full installation guide can be found here: https://kb.paessler.com/en/topic/72306#
Webhook documentation: https://discordapp.com/developers/docs/resources/webhook#execute-webhook
Example used to create sample payload: https://birdie0.github.io/discord-webhooks-guide/discord_webhook.html
Other inputs this script can recieve: https://kb.paessler.com/en/topic/373-what-placeholders-can-i-use-with-prtg

  
Version History 
------------------
Version  Date          Notes
1.0      Nov, 16 2023  Initial Release

------------------
(c) 2023 BaoNL HUB
</pre>

# Prtg Notification Setting
![image](https://github.com/longbao87/PRTG-Monitoring/assets/101858638/6f5bb711-73ce-4a1b-8f62-bbdbadad5c82)

Parameters
-sensor '%sensor' -sensorID '%sensorid' -status '%status' -message '%message' -since '%since' -lastup '%lastup' -device '%device' -sensorURL '%linksensor' -deviceURL '%linkdevice' -serviceURL '%serviceurl'

# Result on DISCORD Application - Channel
![image](https://github.com/longbao87/PRTG-Monitoring/assets/101858638/52d1195c-a9dc-42e2-b4d7-7e3265d342c0)

