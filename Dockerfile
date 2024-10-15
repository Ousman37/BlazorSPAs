# Use an official .NET SDK image to build the application
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Set the working directory inside the container
WORKDIR /source

# Copy the .csproj and restore dependencies as a separate step
COPY *.sln .
COPY YourProjectFolder/*.csproj ./YourProjectFolder/

RUN dotnet restore

# Copy the entire project files
COPY . .

# Build the project
RUN dotnet publish -c Release -o /app --no-restore

# Use a smaller runtime image to run the application
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final

# Set the working directory inside the runtime container
WORKDIR /app

# Copy the build artifacts from the previous image
COPY --from=build /app .

# Expose the port on which the application will run
EXPOSE 80

# Define the entry point to run the application
ENTRYPOINT ["dotnet", "BlazorSPAs.dll"]

