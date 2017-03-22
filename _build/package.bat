@echo off
set scripts=%~dp0
set scripts=%scripts:~0,-1%

set project=%1\%1.csproj

if not defined configuration set configuration=Release

%scripts%\Nuget\nuget.exe pack %project% -Symbols -Prop Configuration=%configuration% -OutputDirectory %scripts%\.. -Prop Platform=AnyCPU
if %errorlevel% neq 0 exit /b %errorlevel%
