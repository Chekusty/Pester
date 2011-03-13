$pwd = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$pwd\Cleanup.ps1"
. "$pwd\..\Pester.ps1"

Describe "When implementing filesystem tests in a fixture" {
    Setup -Dir "foo"
}

Describe "Cleanup" {

    It "should have removed the temp folder from the previous fixture" {
        $result = Test-Path "$($env:temp)\pester"
        $result.should.be($false)
    }
}
