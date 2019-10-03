Feature: 9 Windows Firewall

@9 @9.1 @9.1.1
Scenario: 9.1.1 Ensure 'Windows Firewall: Domain: Firewall state' is set to 'On (recommended)'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "Enabled" is set to "True"

@9 @9.1 @9.1.2
Scenario: 9.1.2 Ensure 'Windows Firewall: Domain: Inbound connections' is set to 'Block (default)'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "DefaultInboundAction" is set to "Block"

@9 @9.1 @9.1.3
Scenario: 9.1.3 Ensure 'Windows Firewall: Domain: Outbound connections' is set to 'Allow (default)'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "DefaultOutboundAction" is set to "Allow"

@9 @9.1 @9.1.4
Scenario: 9.1.4 Ensure 'Windows Firewall: Domain: Settings: Display a notification' is set to 'No'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "NotifyOnListen" is set to "False"

@9 @9.1 @9.1.5
Scenario: 9.1.5 Ensure 'Windows Firewall: Domain: Logging: Name' is set to '%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "LogFileName" is set to "%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log"

@9 @9.1 @9.1.6
Scenario: 9.1.6 Ensure 'Windows Firewall: Domain: Logging: Size limit (KB)' is set to '16,384 KB or greater'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "LogMaxSizeKilobytes" is greater or equal to "16384"

@9 @9.1 @9.1.7
Scenario: 9.1.7 Ensure 'Windows Firewall: Domain: Logging: Log dropped packets' is set to 'Yes'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "LogBlocked" is set to "True"

@9 @9.1 @9.1.8
Scenario: 9.1.8 Ensure 'Windows Firewall: Domain: Logging: Log successful connections' is set to 'Yes'
     When I get a "Domain" firewall profile
     Then the "Domain" firewall property "LogAllowed" is set to "True"

@9 @9.2 @9.2.1
Scenario: 9.2.1 Ensure 'Windows Firewall: Private: Firewall state' is set to 'On (recommended)'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "Enabled" is set to "True"

@9 @9.2 @9.2.2
Scenario: 9.2.2 Ensure 'Windows Firewall: Private: Inbound connections' is set to 'Block (default)'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "DefaultInboundAction" is set to "Block"

@9 @9.2 @9.2.3
Scenario: 9.2.3 Ensure 'Windows Firewall: Private: Outbound connections' is set to 'Allow (default)'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "DefaultOutboundAction" is set to "Allow"

@9 @9.2 @9.2.4
Scenario: 9.2.4 Ensure 'Windows Firewall: Private: Settings: Display a notification' is set to 'No'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "NotifyOnListen" is set to "False"

@9 @9.2 @9.2.5
Scenario: 9.2.5 Ensure 'Windows Firewall: Private: Logging: Name' is set to '%SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "LogFileName" is set to "%SYSTEMROOT%\System32\logfiles\firewall\privatefw.log"

@9 @9.2 @9.2.6
Scenario: 9.2.6 Ensure 'Windows Firewall: Private: Logging: Size limit (KB)' is set to '16,384 KB or greater'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "LogMaxSizeKilobytes" is greater or equal to "16384"

@9 @9.2 @9.2.7
Scenario: 9.2.7 Ensure 'Windows Firewall: Private: Logging: Log dropped packets' is set to 'Yes'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "LogBlocked" is set to "True"

@9 @9.2 @9.2.8
Scenario: 9.2.8 Ensure 'Windows Firewall: Private: Logging: Log successful connections' is set to 'Yes'
     When I get a "Private" firewall profile
     Then the "Private" firewall property "LogAllowed" is set to "True"

@9 @9.3 @9.3.1
Scenario: 9.3.1 Ensure 'Windows Firewall: Public: Firewall state' is set to 'On (recommended)'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "Enabled" is set to "True"

@9 @9.3 @9.3.2
Scenario: 9.3.2 Ensure 'Windows Firewall: Public: Inbound connections' is set to 'Block (default)'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "DefaultInboundAction" is set to "Block"

@9 @9.3 @9.3.3
Scenario: 9.3.3 Ensure 'Windows Firewall: Public: Outbound connections' is set to 'Allow (default)'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "DefaultOutboundAction" is set to "Allow"

@9 @9.3 @9.3.4
Scenario: 9.3.4 Ensure 'Windows Firewall: Public: Settings: Display a notification' is set to 'No'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "NotifyOnListen" is set to "False"

@9 @9.3 @9.3.5
Scenario: 9.3.5 Ensure 'Windows Firewall: Public: Settings: Apply local firewall rules' is set to 'No'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "AllowLocalFirewallRules" is set to "False"

@9 @9.3 @9.3.6
Scenario: 9.3.6 Ensure 'Windows Firewall: Public: Settings: Apply local connection security rules' is set to 'No'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "AllowLocalIPSecRules" is set to "False"

@9 @9.3 @9.3.7
Scenario: 9.3.7 Ensure 'Windows Firewall: Public: Logging: Name' is set to '%SYSTEMROOT%\System32\logfiles\firewall\publicfw.log'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "LogFileName" is set to "%SYSTEMROOT%\System32\logfiles\firewall\publicfw.log"

@9 @9.3 @9.3.8
Scenario: 9.3.8 Ensure 'Windows Firewall: Public: Logging: Size limit (KB)' is set to '16,384 KB or greater'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "LogMaxSizeKilobytes" is greater or equal to "16384"

@9 @9.3 @9.3.9
Scenario: 9.3.9 Ensure 'Windows Firewall: Public: Logging: Log dropped packets' is set to 'Yes'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "LogBlocked" is set to "True"

@9 @9.3 @9.3.10
Scenario: 9.3.10 Ensure 'Windows Firewall: Public: Logging: Log successful connections' is set to 'Yes'
     When I get a "Public" firewall profile
     Then the "Public" firewall property "LogAllowed" is set to "True"

