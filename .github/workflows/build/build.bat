@echo off
md tmp
dotnet publish -c Release -r win-x86 /p:PublishSingleFile=true
move /Y .\bin\Release\net7.0\win-x86\publish\SHX8800.exe .\tmp\SHX8800_x86.exe
dotnet publish -c Release -r win-x64 /p:PublishSingleFile=true
move /Y .\bin\Release\net7.0\win-x64\publish\SHX8800.exe .\tmp\SHX8800_x64.exe