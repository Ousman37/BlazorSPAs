# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["BlazorSPAs.csproj", "./"]
RUN dotnet restore "./BlazorSPAs.csproj"
COPY . .
RUN dotnet build "BlazorSPAs.csproj" -c Release -o /app/build
RUN dotnet publish "BlazorSPAs.csproj" -c Release -o /app/publish

# Use the official .NET runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "BlazorSPAs.dll"]
