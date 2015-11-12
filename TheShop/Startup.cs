using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TheShop.Startup))]
namespace TheShop
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
