#
# Module manifest for module 'PublishDacPac'
#
# Generated by: Dr. John Tunnicliffe
#
# Generated on: 20/03/2019
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PublishDacPac.psm1'

# Version number of this module.
ModuleVersion = '1.0.4'

# ID used to uniquely identify this module
GUID = '12957ebe-7de8-4bf6-9b19-c07596b04f9f'

# Author of this module
Author = 'Dr. John Tunnicliffe'

# Company or vendor of this module
CompanyName = 'Decision Analytics'

# Copyright statement for this module
Copyright = 'Copyright (c) 2019 Dr. John Tunnicliffe. All rights reserved.'

# Description of the functionality provided by this module
Description = @'
Deploy a SQL Database DACPAC using a DAC Publish Profile

Publish-DacPac allows you to deploy a SQL Server Database DACPAC to a SQL Server instance using a DAC Publish Profile.

SSDT (SQL Server Data Tools) is Microsoft's tool to design (declare) the entire database model including tables, views, stored procedures, functions, schemas, etc. etc. etc. SSDT covering all aspects of a database design.

SSDT is now fully integrated into Visual Studio. When you perform a build of a SSDT Visual Studio project, it creates a DACPAC which defines all of the SQL Server objects - like tables, views, and instance objects, including logins - associated with a database.

Publish-DacPac simplifies the use of SqlPackage.exe to deploy a DACPAC by using a DAC Publish Profile which provides for fine-grained control over the database creation and upgrades, including upgrades for schema, triggers, stored procedures, roles, users, extended properties etc. Using a DAC Publish Profile, multiple different properties can be set to ensure that the database is created or upgraded properly.

Publish-DacPac compares the content of a DACPAC to the database already on the target server and generates a deployment script. You can tailor how publish works using a DAC Publish Profile.

Publish-DacPac can be used to automate the deployment of databases, either as part of a build in Azure DevOps, or part of a server deployment using Octopus Deploy or Azure DevOps Release Manager.

To automate build and deployment of databases in Azure DevOps, you can use MsBuild to create DACPAC from your Visual Studio solution. You can then add a PowerShell task which uses Publish-DacPac to invoke SQLPackage.exe to deploy each DACPAC using your own custom DAC Publish Profile.

DAC Publish Profiles are created in Visual Studio when you Publish a database.
For our guide on using DAC Publish Profiles see https://github.com/DrJohnT/AzureDevOpsExtensionsForSqlServer/wiki/DAC-Publish-Profile
'@

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Find-SqlPackageLocations',
    'Get-SqlDatabasePath',
    'Get-SqlPackagePath',
    'Invoke-ExternalCommand',
    'Ping-SqlDatabase',
    'Ping-SqlServer',
    'Publish-DacPac',
    'Select-SqlPackageVersion',
    'Remove-Database'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("SSDT","deployment","DACPAC","deploy","publish","SQL","database","DAC","sqlserver","Profile","Azure","DevOps","SqlPackage","powershell","pipeline","release","data-tier","on-premise","azure","automation")

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/DrJohnT/PublishDacPac/master/PublishDacPac/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/DrJohnT/PublishDacPac'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/DrJohnT/PublishDacPac/releases/tag/1.0.3'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://github.com/DrJohnT/PublishDacPac'

}

