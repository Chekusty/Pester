function Setup([switch] $Dir, [switch] $File, $Path, $Content = "") {
    New-Item -Name pester -Path $env:Temp -Type Container -Force | Out-Null

    if ($Dir) {
        New-Item -Name $Path -Path $env:Temp\pester -Type Container -Force | Out-Null   
    } elseif ($File) {
        $Content | New-Item -Name $Path -Path $env:Temp\pester -Type File -Force | Out-Null
    }
}
