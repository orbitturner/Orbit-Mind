# RDP ACTIVATION 
1. Enable Remote Desktop connections
    
    Set-ItemProperty ‘HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\‘ -Name “fDenyTSConnections” -Value 0
    
2.  Enable Network Level Authentication
    
    Set-ItemProperty ‘HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\‘ -Name “UserAuthentication” -Value 1
    
3.  Enable Windows firewall rules to allow incoming RDP
    
    Enable-NetFirewallRule -DisplayGroup “Remote Desktop”