# BlazorSPAs

A modern single-page application (SPA) built using Blazor, showcasing the power of C#, .NET, and Blazor for building rich, interactive web applications. This project demonstrates reusable components, integration with REST APIs, and responsive design.

## Features

- **Blazor WebAssembly**: Full-stack C# for front-end and back-end development.
- **Responsive Design**: Optimized for different screen sizes.
- **Reusable Components**: Efficient component-based development.
- **Integration with APIs**: Fetches product data and handles user interactions.

## Getting Started

### Prerequisites

- [.NET 8.0 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)
- [Docker](https://www.docker.com/get-started) (optional, if you want to use Docker for deployment)
- Git

### Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:Ousman37/BlazorSPAs.git
   cd BlazorSPAs
   ```

### Restore dependencies and build the project

```bash
dotnet restore
dotnet build
```

### Run the project

```bash
dotnet run
```

## Running with Docker

### Build the Docker image

```bash
docker build -t blazorspas .
```

### Run the Docker container

```bash
docker run -p 8080:80 blazorspas
```

### Project Structure

- **Pages/**: Contains the main pages of the SPA like Home, About, Contact, and Products.
- **Components/**: Contains reusable components like navigation menus and layouts.
- **wwwroot/**: Static files like CSS, JS, and images.
- **Dockerfile**: Configuration for Docker containerization.
- **Program.cs**: The entry point of the application.

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
