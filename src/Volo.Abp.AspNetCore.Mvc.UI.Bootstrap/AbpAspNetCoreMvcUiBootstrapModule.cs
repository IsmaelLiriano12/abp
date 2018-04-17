﻿using Microsoft.Extensions.DependencyInjection;
using Volo.Abp.AspNetCore.EmbeddedFiles;
using Volo.Abp.Modularity;
using Volo.Abp.VirtualFileSystem;

namespace Volo.Abp.AspNetCore.Mvc.UI.Bootstrap
{
    [DependsOn(typeof(AbpAspNetCoreMvcUiModule))]
    [DependsOn(typeof(AbpAspNetCoreEmbeddedFilesModule))]
    public class AbpAspNetCoreMvcUiBootstrapModule : AbpModule
    {
        public override void ConfigureServices(IServiceCollection services)
        {
            services.AddAssemblyOf<AbpAspNetCoreMvcUiBootstrapModule>();
            
            services.Configure<VirtualFileSystemOptions>(options =>
            {
                options.FileSets.AddEmbedded<AbpAspNetCoreMvcUiBootstrapModule>("Volo.Abp.AspNetCore.Mvc.UI.Bootstrap");
            });
        }
    }
}
