# PowerBI Desktop MCP Server - Antigravity Installation Guide

## Overview
This guide will help you install and configure the PowerBI Desktop MCP Server for use with Antigravity.

## What You'll Get
The PowerBI MCP Server allows Antigravity to interact with your Power BI Desktop models programmatically, enabling:
- Reading model structure (tables, columns, measures, relationships)
- Running DAX queries
- Creating and modifying measures
- Managing relationships
- Performing advanced analytics
- And much more through natural conversation!

## Available Versions

### Full Version (powerbi-desktop-mcp-2.0.10.exe)
- **26 powerful tools** for complete Power BI model operations
- Can create, update, and delete model objects
- **Use when**: You need full control and want to modify your models

### Read-Only Version (powerbi-desktop-mcp-readonly-2.0.10.exe) ⭐ RECOMMENDED FOR FIRST TIME
- **9 read and analysis tools** only
- Cannot modify your Power BI models
- **Use when**: You want to explore and analyze safely without risk of changes

## Download Links

**Full Version:**
```
https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-2.0.10.exe
```

**Read-Only Version:**
```
https://github.com/maxanatsko/PowerBI-Desktop-MCP/raw/refs/heads/main/Releases/powerbi-desktop-mcp-readonly-2.0.10.exe
```

## Installation Steps

### Step 1: Download the Executable
1. Choose which version you want (read-only recommended for first time)
2. Download the `.exe` file to a permanent location
   - Recommended: `C:\Program Files\PowerBI-MCP\`
   - Or use this folder: `C:\Users\alabe\OneDrive\Escritorio\PowerBi MCP\`

### Step 2: Configure Antigravity MCP Settings

Antigravity uses MCP (Model Context Protocol) to connect to external tools. You need to add the PowerBI MCP server to Antigravity's configuration.

#### Option A: Through Antigravity UI (Preferred)
1. Open Antigravity
2. Look for **Settings** or **Preferences**
3. Find **MCP Servers** or **Extensions** section
4. Click **Add Custom MCP Server** or similar option
5. Configure:
   - **Name**: `powerbi-desktop` (or `powerbi-desktop-readonly`)
   - **Type**: `stdio`
   - **Command**: Full path to the .exe file
     - Example: `C:\Users\alabe\OneDrive\Escritorio\PowerBi MCP\powerbi-desktop-mcp-readonly-2.0.10.exe`
   - **Args**: Leave empty `[]`

#### Option B: Manual Configuration File
If Antigravity uses a configuration file (similar to Claude Desktop or VS Code), you may need to edit a JSON file:

**Location to check:**
- `%APPDATA%\Antigravity\mcp.json`
- `%USERPROFILE%\.antigravity\mcp.json`
- Or in your workspace: `.antigravity\mcp.json`

**Configuration format:**
```json
{
  "mcpServers": {
    "powerbi-desktop-readonly": {
      "command": "C:\\Users\\alabe\\OneDrive\\Escritorio\\PowerBi MCP\\powerbi-desktop-mcp-readonly-2.0.10.exe",
      "args": [],
      "type": "stdio"
    }
  }
}
```

### Step 3: Restart Antigravity
After adding the MCP server configuration, completely restart Antigravity.

### Step 4: Verify Installation
1. Open Power BI Desktop with a .pbix file
2. In Antigravity, try asking:
   - "List available Power BI models"
   - "What tables are in my Power BI model?"
   - "Show me the measures in my model"

## Prerequisites

✅ **Windows 10/11** - This is a Windows-only tool
✅ **Power BI Desktop** - Must be installed ([Download here](https://www.microsoft.com/en-us/download/details.aspx?id=58494))
✅ **Active PBIX file** - Power BI Desktop must have a file open
✅ **Antigravity** - Your AI coding assistant

## Available Tools

### Read-Only Version (9 tools)
1. **manage_model_connection** - List and connect to Power BI instances
2. **manage_model_properties** - View model properties
3. **list_objects** - List tables, measures, columns, relationships, etc.
4. **run_dax** - Execute DAX queries (up to 1000 rows)
5. **analyze_table** - Describe tables, preview data, get statistics
6. **get_model_info** - Export schema or view data sources
7. **search_objects** - Search for objects by name or expression
8. **get_vertipaq_stats** - View storage and performance statistics
9. **get_query_performance** - Analyze DAX query performance

### Full Version (26 tools)
All read-only tools PLUS:
- Create/update/delete measures
- Create/update/delete tables
- Manage relationships
- Create calculation groups
- Manage hierarchies, KPIs, roles, perspectives
- Multi-language support
- And more!

## Troubleshooting

### "No Power BI instances found"
- Make sure Power BI Desktop is running
- Ensure you have a .pbix file open
- Try restarting Power BI Desktop

### "MCP server not found" in Antigravity
- Verify the .exe path is correct
- Check that the file exists at the specified location
- Ensure you restarted Antigravity after configuration

### "Connection failed"
- Verify Power BI Desktop is running
- Check Windows Firewall isn't blocking the connection
- Try running Antigravity as administrator

## Security & Privacy

✅ **Local-only** - Runs entirely on your machine, no external data transmission
✅ **No credentials exposed** - No passwords or connection strings sent to AI
✅ **Read-only option** - Use the read-only version for safe exploration
⚠️ **Review changes** - Always review AI suggestions before applying (full version)

## Next Steps

Once installed, you can:
1. Ask Antigravity to analyze your Power BI models
2. Generate DAX measures through conversation
3. Explore relationships and data structures
4. Get insights about your model's performance
5. Create documentation automatically

## Support

For issues or questions:
- Check the [GitHub repository](https://github.com/maxanatsko/PowerBI-Desktop-MCP)
- Review the troubleshooting section above
- Contact: Maxim Anatsko - [maxanatsko.com](https://maxanatsko.com)

---

**Created:** 2025-11-21
**Version:** 2.0.10
**Platform:** Windows only
