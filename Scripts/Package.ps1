<#
.SYNOPSIS
    Build the Umov project and package it as a Nuget package.
.PARAMETER msbuild
    Path to the MSBuild executable.
.PARAMETER nuget
    Path to the Nuget executable.
.PARAMETER Solution
    Path to the solution that will be built.
.PARAMETER Project
    Path to the main project that will be packed.
.PARAMETER Configuration
    Solution configuration that will be built and packed.
#>
param (
    $msbuild = 'msbuild',
    $nuget = 'nuget',
    $Solution = "$PSScriptRoot/../Umov.sln",
    $Project = "$PSScriptRoot/../Umov.Gui/Umov.Gui.csproj",
    $Configuration = "Release"
)

& $msbuild $Solution  /m "/p:Configuration=$Configuration" /p:Platform="Any CPU"
if (-not $?) {
    exit $LASTEXITCODE
}

& $nuget `
    pack `
    $Project `
    -IncludeReferencedProjects `
    -Prop "Configuration=$Configuration"

exit $LASTEXITCODE
