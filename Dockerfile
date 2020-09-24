FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS base
WORKDIR /src

COPY src/*.csproj .
RUN dotnet restore
COPY . .
RUN dotnet build -c Release -o /app

FROM base AS publish
RUN dotnet publish -c Release -o /app

FROM base
WORKDIR /app
COPY --from=publish /app .

ENTRYPOINT [ "dotnet", "PMTest.dll" ]