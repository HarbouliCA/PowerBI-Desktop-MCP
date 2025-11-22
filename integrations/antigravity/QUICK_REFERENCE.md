# PowerBI MCP Quick Reference

## Quick Start Commands

Once the MCP server is configured and running, you can use these commands in Antigravity:

### Getting Started
```
List available Power BI models
```
```
Connect to my Power BI model
```
```
Show me the current model connection status
```

### Exploring Your Model
```
List all tables in my Power BI model
```
```
Show me all measures
```
```
List all relationships in the model
```
```
What columns are in the Sales table?
```
```
Show me all hierarchies
```

### Running DAX Queries
```
Run this DAX query: EVALUATE 'Sales'
```
```
Show me the top 10 rows from the Customers table
```
```
Execute DAX: EVALUATE TOPN(100, 'Products')
```

### Analyzing Data
```
Analyze the Sales table and show me statistics
```
```
Preview data from the Products table
```
```
Get column statistics for the Revenue column
```
```
Show me VertiPaq storage statistics
```

### Searching
```
Search for measures containing "Total"
```
```
Find all columns with "Date" in the name
```
```
Search for DAX expressions containing "CALCULATE"
```

### Model Information
```
Export the complete model schema
```
```
Show me all data sources
```
```
Get model properties
```
```
List all calculation groups
```

## Full Version Only Commands

If you're using the full version (not read-only):

### Creating Measures
```
Create a new measure called "Total Sales" with expression: SUM(Sales[Amount])
```
```
Add a measure "Average Price" = AVERAGE(Products[Price]) to the Products table
```

### Managing Tables
```
Create a new calculated table called "Date Table"
```
```
Delete the temporary table "Test"
```

### Relationships
```
Create a relationship between Sales[ProductID] and Products[ProductID]
```
```
Update the relationship to use bidirectional filtering
```

## Tips

1. **Always start with listing models** to see what's available
2. **Use the read-only version first** to explore safely
3. **Be specific** with table and column names
4. **Review DAX** before executing complex queries
5. **Check connection status** if commands aren't working

## Common Workflows

### Workflow 1: Explore a New Model
1. List available models
2. Connect to the model
3. List all tables
4. List all measures
5. Analyze key tables

### Workflow 2: Create Documentation
1. Export model schema
2. List all measures with descriptions
3. List all relationships
4. Get VertiPaq statistics

### Workflow 3: Develop New Measures
1. Search for similar existing measures
2. Analyze the target table
3. Create the new measure (full version)
4. Test with a DAX query

### Workflow 4: Performance Analysis
1. Get VertiPaq statistics
2. Analyze query performance
3. Check column cardinality
4. Review compression ratios

## Troubleshooting Quick Fixes

**Problem:** "No Power BI instances found"
**Solution:** Open Power BI Desktop with a .pbix file

**Problem:** Commands not working
**Solution:** Check connection status, restart Antigravity

**Problem:** Can't modify model
**Solution:** You might be using read-only version, switch to full version

**Problem:** DAX query fails
**Solution:** Check syntax, verify table/column names exist

## File Locations

**Executables:**
- Read-Only: `C:\Users\alabe\OneDrive\Escritorio\PowerBi MCP\powerbi-desktop-mcp-readonly-2.0.10.exe`
- Full: `C:\Users\alabe\OneDrive\Escritorio\PowerBi MCP\powerbi-desktop-mcp-2.0.10.exe`

**Configuration:**
- Sample config: `antigravity-mcp-config-sample.json`
- Installation guide: `INSTALLATION_GUIDE.md`

## Version Comparison

| Feature | Read-Only | Full |
|---------|-----------|------|
| List objects | ✅ | ✅ |
| Run DAX queries | ✅ | ✅ |
| Analyze tables | ✅ | ✅ |
| Get statistics | ✅ | ✅ |
| Search objects | ✅ | ✅ |
| Create measures | ❌ | ✅ |
| Modify tables | ❌ | ✅ |
| Manage relationships | ❌ | ✅ |
| Create calc groups | ❌ | ✅ |
| Manage security | ❌ | ✅ |

---

**Need Help?** Check INSTALLATION_GUIDE.md for detailed information
