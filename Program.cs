using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using BlazorSPAs;

var builder = WebAssemblyHostBuilder.CreateDefault(args);

// Add the root component to the app
builder.RootComponents.Add<App>("#app");

// Add the HeadOutlet component (used for managing document head content)
builder.RootComponents.Add<HeadOutlet>("head::after");

// Register HttpClient for making HTTP requests
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

// Build and run the app
await builder.Build().RunAsync();
