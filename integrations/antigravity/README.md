# PowerBI Desktop MCP Server for Antigravity

Welcome! This folder contains everything you need to set up and use the PowerBI Desktop MCP Server with Antigravity.

## 📁 What's in This Folder

- **`INSTALLATION_GUIDE.md`** - Complete installation instructions
- **`QUICK_REFERENCE.md`** - Quick reference for commands and usage
- **`download-powerbi-mcp.bat`** - Easy download script (double-click to run)
- **`download-powerbi-mcp.ps1`** - PowerShell download script (alternative)
- **`antigravity-mcp-config-sample.json`** - Sample configuration file
- **`README.md`** - This file

## 🚀 Quick Start (3 Steps)

### Step 1: Download the Executable
Double-click **`download-powerbi-mcp.bat`** and choose:
- **Option 1** (Recommended): Read-Only Version - Safe exploration
- **Option 2**: Full Version - Complete control
- **Option 3**: Both versions

### Step 2: Configure Antigravity
1. Open Antigravity settings
2. Find MCP Servers or Extensions section
3. Add a new MCP server with these details:
   - **Name**: `powerbi-desktop-readonly`
   - **Type**: `stdio`
   - **Command**: `C:\Users\alabe\OneDrive\Escritorio\PowerBi MCP\powerbi-desktop-mcp-readonly-2.0.10.exe`
   - **Args**: `[]` (empty)

### Step 3: Start Using It!
1. Restart Antigravity
2. Open Power BI Desktop with a .pbix file
3. In Antigravity, ask: "List available Power BI models"

## 📚 Documentation

- **New to this?** → Read `INSTALLATION_GUIDE.md`
- **Ready to use?** → Check `QUICK_REFERENCE.md`
- **Need config help?** → See `antigravity-mcp-config-sample.json`

## 🎯 What Can You Do?

With PowerBI MCP + Antigravity, you can:

✅ **Explore** your Power BI models through conversation
✅ **Run DAX queries** without leaving Antigravity
✅ **Create measures** using natural language (full version)
✅ **Analyze** table structures and relationships
✅ **Generate** documentation automatically
✅ **Optimize** model performance with VertiPaq stats
✅ **Search** for measures, columns, and DAX expressions

## 🔒 Safety First

**Recommended for First Time:**
- Use the **Read-Only version** to explore safely
- It cannot modify your Power BI models
- Perfect for learning and analysis

**When You're Ready:**
- Switch to the **Full version** for complete control
- Can create, update, and delete model objects
- Always review AI suggestions before applying

## 💡 Example Commands

Try these in Antigravity once configured:

```
List all tables in my Power BI model
```

```
Show me all measures
```

```
Run this DAX query: EVALUATE 'Sales'
```

```
Create a measure "Total Revenue" = SUM(Sales[Amount])
```

```
Analyze the Sales table and show statistics
```

## 🛠️ Prerequisites

- ✅ Windows 10/11
- ✅ Power BI Desktop installed
- ✅ Antigravity (you're using it!)
- ✅ A .pbix file open in Power BI Desktop

## ❓ Troubleshooting

**"No Power BI instances found"**
→ Make sure Power BI Desktop is running with a .pbix file open

**"MCP server not found"**
→ Check the executable path in your Antigravity config

**Commands not working**
→ Restart Antigravity after configuration changes

**More help?** → See the Troubleshooting section in `INSTALLATION_GUIDE.md`

## 📦 Version Information

- **Current Version**: 2.0.10
- **Read-Only Tools**: 9 tools for safe exploration
- **Full Version Tools**: 26 tools for complete control
- **Platform**: Windows only
- **License**: See GitHub repository

## 🔗 Links

- **GitHub Repository**: https://github.com/maxanatsko/PowerBI-Desktop-MCP
- **Author**: Maxim Anatsko
- **Website**: https://maxanatsko.com

## 📝 Notes

- The MCP server runs locally on your machine
- No data is sent to external servers
- Works with Power BI Desktop only (not Power BI Service)
- Requires an active .pbix file to be open

## 🎉 Ready to Start?

1. Run `download-powerbi-mcp.bat`
2. Read `INSTALLATION_GUIDE.md`
3. Configure Antigravity
4. Start exploring your Power BI models!

---

**Questions?** Check the documentation files or visit the GitHub repository.

**Happy analyzing!** 🚀
