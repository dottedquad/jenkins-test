@echo off

set vswhere="C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe"

for /f "usebackq tokens=*" %%i in (`%vswhere% -latest -products * -requires Microsoft.Component.MSBuild -property installationPath`) do (
  set InstallDir=%%i
)

if exist "%InstallDir%\MSBuild\15.0\Bin\MSBuild.exe" (
  "%InstallDir%\MSBuild\15.0\Bin\MSBuild.exe" HelloWorld\HelloWorld.sln
)
