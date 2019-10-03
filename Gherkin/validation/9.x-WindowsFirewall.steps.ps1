When 'I get a "(.*)" firewall profile' {
	param($profile)
    $script:_Profile = Get-NetFirewallProfile -Profile $profile
}

Then 'the "(.*)" firewall property "(.*)" is set to "(.*)"' {
    param($profile, $key, $value)
    $actualValue = $script:_Profile.$key
    $actualValue | Should -Be $value
}

Then 'the "(.*)" firewall property "(.*)" is greater or equal to "(.*)"' {
    param($profile, $key, $value)
    $actualValue = $script:_Profile.$key
    $actualValue | Should -BeGreaterOrEqual $value
}