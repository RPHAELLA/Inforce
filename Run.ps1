# Install-Module Pester -Force
# Get-Module Pester -ListAvailable
# Update-Module Pester -Force

Invoke-Gherkin -OutputFormat  NUnitXml -OutputFile $PSScriptRoot\Result\Result.xml -Show None
