function Cleanup() {
    if (Test-Path $env:Temp\pester) {
        Remove-Item $env:Temp\pester -Recurse -Force
    }
}
