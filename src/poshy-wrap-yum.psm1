#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command yum) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

# search package
function Invoke-YumSearch {
    yum search @args
}
Set-Alias -Name ys -Value Invoke-YumSearch
Export-ModuleMember -Function Invoke-YumSearch -Alias ys

# show package info
function Invoke-YumInfo {
    yum info @args
}
Set-Alias -Name yp -Value Invoke-YumInfo
Export-ModuleMember -Function Invoke-YumInfo -Alias yp

# list packages
function Invoke-YumList {
    yum list @args
}
Set-Alias -Name yl -Value Invoke-YumList
Export-ModuleMember -Function Invoke-YumList -Alias yl

# list package groups
function InvokeYumGrouplist {
    yum grouplist @args
}
Set-Alias -Name ygl -Value InvokeYumGrouplist
Export-ModuleMember -Function InvokeYumGrouplist -Alias ygl

# print all installed packages
function Invoke-YumListInstalled {
    yum list installed @args
}
Set-Alias -Name yli -Value Invoke-YumListInstalled
Export-ModuleMember -Function Invoke-YumListInstalled -Alias yli

# rebuilds the yum package list
function Invoke-YumMakecache {
    yum makecache @args
}
Set-Alias -Name ymc -Value Invoke-YumMakecache
Export-ModuleMember -Function Invoke-YumMakecache -Alias ymc

# upgrade packages
function Invoke-YumUpdate {
    sudo yum update @args
}
Set-Alias -Name yu -Value Invoke-YumUpdate
Export-ModuleMember -Function Invoke-YumUpdate -Alias yu

# install package
function Invoke-YumInstall {
    sudo yum install @args
}
Set-Alias -Name yi -Value Invoke-YumInstall
Export-ModuleMember -Function Invoke-YumInstall -Alias yi

# install package group
function Invoke-YumGroupinstall {
    sudo yum groupinstall @args
}
Set-Alias -Name ygi -Value Invoke-YumGroupinstall
Export-ModuleMember -Function Invoke-YumGroupinstall -Alias ygi

# remove package
function Invoke-YumRemove {
    sudo yum remove @args
}
Set-Alias -Name yr -Value Invoke-YumRemove
Export-ModuleMember -Function Invoke-YumRemove -Alias yr

# remove pagage group
function Invoke-YumGroupremove {
    sudo yum groupremove @args
}
Set-Alias -Name ygr -Value Invoke-YumGroupremove
Export-ModuleMember -Function Invoke-YumGroupremove -Alias ygr

# remove package and leaves
function Invoke-YumRemoveLeaves {
    sudo yum remove --remove-leaves @args
}
Set-Alias -Name yrl -Value Invoke-YumRemoveLeaves
Export-ModuleMember -Function Invoke-YumRemoveLeaves -Alias yrl

# clean cache
function Invoke-YumCleanAll {
    sudo yum clean all @args
}
Set-Alias -Name yc -Value Invoke-YumCleanAll
Export-ModuleMember -Function Invoke-YumCleanAll -Alias yc
