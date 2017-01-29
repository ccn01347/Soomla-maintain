@echo off
SET MSBUILD_PATH="C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe"
SET WP_STORE_PATH="wp-store/wp-store.sln"
IF NOT EXIST %MSBUILD_PATH% echo "MSBuild.exe not found at %MSBUILD_PATH% please check your installation." && cmd /k
IF NOT EXIST %WP_STORE_PATH% echo "wp-store.sln not found at %WP_STORE_PATH%, you should execute this script from his directory." && cmd /k
%MSBUILD_PATH% %WP_STORE_PATH% /p:Configuration=Release /p:Platform="ARM" /p:OutputPath="../../build/ARM"
if errorlevel 1 echo "ARM BUILD FAIL, please check the log." && cmd /k
echo "ARM BUILD DONE SUCCESSFULLY"
%MSBUILD_PATH% %WP_STORE_PATH% /p:Configuration=Release /p:Platform="x86" /p:OutputPath="../../build/x86"
if errorlevel 1 echo "X86 BUILD FAIL, please check the log." && cmd /k
echo "X86 BUILD DONE SUCCESSFULLY"