# Paths
$packFolder = (Get-Item -Path "./" -Verbose).FullName
$rootFolder = Join-Path $packFolder "../"

# List of solutions
$solutions = (
    "framework",
    "modules/users",
    "modules/setting-management",
    "modules/permission-management",
    "modules/tenant-management",
    "modules/identity",
    "modules/account"
)

# List of projects
$projects = (

    # framework    
    "framework/src/Volo.Abp.ApiVersioning.Abstractions",
    "framework/src/Volo.Abp.AspNetCore",
    "framework/src/Volo.Abp.AspNetCore.Authentication.OAuth",
    "framework/src/Volo.Abp.AspNetCore.MultiTenancy",
    "framework/src/Volo.Abp.AspNetCore.Mvc",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Bootstrap",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Bundling",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Packages",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Theme.Basic",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Theme.Shared",
    "framework/src/Volo.Abp.AspNetCore.TestBase",    
    "framework/src/Volo.Abp.Auditing",
    "framework/src/Volo.Abp.Authorization",
    "framework/src/Volo.Abp.AutoFac",
    "framework/src/Volo.Abp.AutoMapper",
    "framework/src/Volo.Abp.Caching",
    "framework/src/Volo.Abp.Castle.Core",
    "framework/src/Volo.Abp.Core",
    "framework/src/Volo.Abp.Data",
    "framework/src/Volo.Abp.Ddd.Application",
    "framework/src/Volo.Abp.Ddd.Domain",
    "framework/src/Volo.Abp.Emailing",
    "framework/src/Volo.Abp.EntityFrameworkCore",
    "framework/src/Volo.Abp.EntityFrameworkCore.SqlServer",
    "framework/src/Volo.Abp.EventBus",
    "framework/src/Volo.Abp.EventBus.Distributed",
    "framework/src/Volo.Abp.EventBus.Distributed.RabbitMQ",
    "framework/src/Volo.Abp.Guids",
    "framework/src/Volo.Abp.Http",
    "framework/src/Volo.Abp.Http.Abstractions",
    "framework/src/Volo.Abp.Http.Client",    
    "framework/src/Volo.Abp.Json",
    "framework/src/Volo.Abp.Localization",
    "framework/src/Volo.Abp.MemoryDb",
    "framework/src/Volo.Abp.MongoDB",
    "framework/src/Volo.Abp.MultiTenancy.Abstractions",
    "framework/src/Volo.Abp.ObjectMapping",
    "framework/src/Volo.Abp.Security",
    "framework/src/Volo.Abp.Serialization",
    "framework/src/Volo.Abp.Settings",
    "framework/src/Volo.Abp.Sms",
    "framework/src/Volo.Abp.TestBase",
    "framework/src/Volo.Abp.Threading",
    "framework/src/Volo.Abp.Timing",
    "framework/src/Volo.Abp.UI",
    "framework/src/Volo.Abp.UI.Navigation",
    "framework/src/Volo.Abp.Uow",
    "framework/src/Volo.Abp.Validation",
    "framework/src/Volo.Abp.VirtualFileSystem",
    
    # modules/users
    "modules/users/src/Volo.Abp.Users.Abstractions",
    "modules/users/src/Volo.Abp.Users.Domain",
    "modules/users/src/Volo.Abp.Users.Domain.Shared",
    "modules/users/src/Volo.Abp.Users.EntityFrameworkCore",
    "modules/users/src/Volo.Abp.Users.MongoDB",

    # modules/setting-management
    "modules/setting-management/src/Volo.Abp.SettingManagement.Domain.Shared",
    "modules/setting-management/src/Volo.Abp.SettingManagement.Domain",
    "modules/setting-management/src/Volo.Abp.SettingManagement.EntityFrameworkCore",
    "modules/setting-management/src/Volo.Abp.SettingManagement.MongoDB",

    # modules/permission-management
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Domain.Shared",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Domain",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Application.Contracts",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Application",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.EntityFrameworkCore",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.MongoDB",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Web",

    # modules/tenant-management
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Domain.Shared",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Domain",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Application.Contracts",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Application",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.EntityFrameworkCore",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.MongoDB",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.HttpApi",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.HttpApi.Client",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Web",
    
    # modules/identity
    "modules/identity/src/Volo.Abp.Identity.Application",
    "modules/identity/src/Volo.Abp.Identity.Application.Contracts",
    "modules/identity/src/Volo.Abp.Identity.Domain",
    "modules/identity/src/Volo.Abp.Identity.Domain.Shared",
    "modules/identity/src/Volo.Abp.Identity.EntityFrameworkCore",
    "modules/identity/src/Volo.Abp.Identity.MongoDB",
    "modules/identity/src/Volo.Abp.Identity.HttpApi",
    "modules/identity/src/Volo.Abp.Identity.HttpApi.Client",
    "modules/identity/src/Volo.Abp.Identity.Web",    

    # modules/account
    "modules/account/src/Volo.Abp.Account.Web"
    
)

# Rebuild all solutions
foreach($solution in $solutions) {
    $solutionFolder = Join-Path $rootFolder $solution
    Set-Location $solutionFolder
    & dotnet restore
}

# Create all packages
foreach($project in $projects) {
    
    $projectFolder = Join-Path $rootFolder $project

    # Create nuget pack
    Set-Location $projectFolder
    Remove-Item -Recurse (Join-Path $projectFolder "bin/Release")
    & dotnet msbuild /t:pack /p:Configuration=Release /p:SourceLinkCreate=true

    # Copy nuget package
    $projectName = $project.Substring($project.LastIndexOf("/") + 1)
    $projectPackPath = Join-Path $projectFolder ("/bin/Release/" + $projectName + ".*.nupkg")
    Move-Item $projectPackPath $packFolder

}

# Go back to the pack folder
Set-Location $packFolder