# PowerBI MCP Server Download Script
# Downloads the PowerBI Desktop MCP Server executables

Write-Host "================================================"
Write-Host "  PowerBI Desktop MCP Server Downloader"
Write-Host "================================================"
Write-Host ""

$downloadDir = $PSScriptRoot
Write-Host "Download directory: $downloadDir"
Write-Host ""

$fullVersionUrl = "https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-2.0.10.exe"
$readOnlyVersionUrl = "https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-readonly-2.0.10.exe"

$fullVersionPath = Join-Path $downloadDir "powerbi-desktop-mcp-2.0.10.exe"
$readOnlyVersionPath = Join-Path $downloadDir "powerbi-desktop-mcp-readonly-2.0.10.exe"

Write-Host "Which version would you like to download?"
Write-Host "  1. Read-Only Version (Recommended - Safe, cannot modify models)"
Write-Host "  2. Full Version (All 26 tools - Can create/modify/delete)"
Write-Host "  3. Both versions"
Write-Host ""
$choice = Read-Host "Enter your choice (1, 2, or 3)"

Write-Host ""

if ($choice -eq "1") {
    Write-Host "Downloading Read-Only Version..."
    Write-Host "  From: $readOnlyVersionUrl"
    Write-Host "  To:   $readOnlyVersionPath"
    
    Invoke-WebRequest -Uri $readOnlyVersionUrl -OutFile $readOnlyVersionPath -UseBasicParsing
    
    if (Test-Path $readOnlyVersionPath) {
        $fileSize = (Get-Item $readOnlyVersionPath).Length / 1MB
        Write-Host "  Downloaded successfully! Size: $([math]::Round($fileSize, 2)) MB"
        Write-Host ""
        Write-Host "File location: $readOnlyVersionPath"
    }
}
elseif ($choice -eq "2") {
    Write-Host "Downloading Full Version..."
    Write-Host "  From: $fullVersionUrl"
    Write-Host "  To:   $fullVersionPath"
    
    Invoke-WebRequest -Uri $fullVersionUrl -OutFile $fullVersionPath -UseBasicParsing
    
    if (Test-Path $fullVersionPath) {
        $fileSize = (Get-Item $fullVersionPath).Length / 1MB
        Write-Host "  Downloaded successfully! Size: $([math]::Round($fileSize, 2)) MB"
        Write-Host ""
        Write-Host "File location: $fullVersionPath"
    }
}
elseif ($choice -eq "3") {
    Write-Host "Downloading Both Versions..."
    Write-Host ""
    Write-Host "Downloading Read-Only Version..."
    Invoke-WebRequest -Uri $readOnlyVersionUrl -OutFile $readOnlyVersionPath -UseBasicParsing
    
    Write-Host "Downloading Full Version..."
    Invoke-WebRequest -Uri $fullVersionUrl -OutFile $fullVersionPath -UseBasicParsing
    
    Write-Host ""
    Write-Host "Both versions downloaded successfully!"
    Write-Host "  Read-Only: $readOnlyVersionPath"
    Write-Host "  Full:      $fullVersionPath"
}
else {
    Write-Host "Invalid choice. Please run the script again and select 1, 2, or 3."
    exit
}

Write-Host ""
Write-Host "================================================"
Write-Host "Next Steps:"
Write-Host "================================================"
Write-Host "1. Review the INSTALLATION_GUIDE.md file"
Write-Host "2. Configure Antigravity to use the MCP server"
Write-Host "3. Restart Antigravity"
Write-Host "4. Open Power BI Desktop with a .pbix file"
Write-Host "5. Start using PowerBI MCP with Antigravity!"
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
