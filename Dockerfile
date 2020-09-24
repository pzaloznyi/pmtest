FROM mcr.microsoft.com/dotnet/core/runtime:3.1
COPY App/bin/Release/netcoreapp3.1/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "PMTest.dll"]