@echo off
echo ================================================
echo   PowerBI Desktop MCP Server Downloader
echo ================================================
echo.

set DOWNLOAD_DIR=%~dp0

echo Which version would you like to download?
echo   1. Read-Only Version (Recommended - Safe)
echo   2. Full Version (All tools)
echo   3. Both versions
echo.
set /p choice="Enter your choice (1, 2, or 3): "

echo.

if "%choice%"=="1" (
    echo Downloading Read-Only Version...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-readonly-2.0.10.exe' -OutFile '%DOWNLOAD_DIR%powerbi-desktop-mcp-readonly-2.0.10.exe' -UseBasicParsing"
    echo.
    echo Downloaded to: %DOWNLOAD_DIR%powerbi-desktop-mcp-readonly-2.0.10.exe
)

if "%choice%"=="2" (
    echo Downloading Full Version...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-2.0.10.exe' -OutFile '%DOWNLOAD_DIR%powerbi-desktop-mcp-2.0.10.exe' -UseBasicParsing"
    echo.
    echo Downloaded to: %DOWNLOAD_DIR%powerbi-desktop-mcp-2.0.10.exe
)

if "%choice%"=="3" (
    echo Downloading Both Versions...
    echo.
    echo Downloading Read-Only Version...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-readonly-2.0.10.exe' -OutFile '%DOWNLOAD_DIR%powerbi-desktop-mcp-readonly-2.0.10.exe' -UseBasicParsing"
    echo.
    echo Downloading Full Version...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-2.0.10.exe' -OutFile '%DOWNLOAD_DIR%powerbi-desktop-mcp-2.0.10.exe' -UseBasicParsing"
    echo.
    echo Both versions downloaded!
    echo   Read-Only: %DOWNLOAD_DIR%powerbi-desktop-mcp-readonly-2.0.10.exe
    echo   Full:      %DOWNLOAD_DIR%powerbi-desktop-mcp-2.0.10.exe
)

echo.
echo ================================================
echo Next Steps:
echo ================================================
echo 1. Review the INSTALLATION_GUIDE.md file
echo 2. Configure Antigravity to use the MCP server
echo 3. Restart Antigravity
echo 4. Open Power BI Desktop with a .pbix file
echo 5. Start using PowerBI MCP with Antigravity!
echo.
pause
