# 🚀 How to Contribute Antigravity Integration to GitHub

You have successfully prepared the **Antigravity Integration Package**. This folder contains everything needed to add Antigravity support to the official `PowerBI-Desktop-MCP` repository.

## 📦 What's in this Package?
We have selected only the **generic integration files** and excluded all your private analysis (DAX, Python, Charts).

*   `antigravity-mcp-config-sample.json`: The configuration file.
*   `INSTALLATION_GUIDE.md`: Instructions for Antigravity users.
*   `ARCHITECTURE.md`: Technical overview of the integration.
*   `download-powerbi-mcp.bat/ps1`: Helper scripts.
*   `README.md` & `QUICK_REFERENCE.md`: Documentation.

---

##  step-by-Step Contribution Guide

### 1. Fork the Repository
1.  Go to the official repo: `https://github.com/maxanatsko/PowerBI-Desktop-MCP`
2.  Click the **Fork** button (top right) to create your own copy.

### 2. Clone Your Fork
Open your terminal (outside of this workspace) and run:
```bash
git clone https://github.com/YOUR_USERNAME/PowerBI-Desktop-MCP.git
cd PowerBI-Desktop-MCP
```

### 3. Add the Antigravity Integration
1.  Create a new folder named `integrations` (if it doesn't exist) and then `antigravity` inside it.
    *   Path: `PowerBI-Desktop-MCP/integrations/antigravity/`
2.  **Copy all files** from this `Antigravity_Integration_Package` folder into that new folder.

### 4. Push Changes
```bash
git add .
git commit -m "Add Antigravity AI integration support"
git push origin main
```

### 5. Create Pull Request (PR)
1.  Go back to your Fork on GitHub.
2.  Click **"Compare & pull request"**.
3.  Write a description:
    > "Added support for Antigravity AI (Google DeepMind). Includes configuration templates, installation scripts, and architecture documentation."
4.  Submit!

---

## ✅ Checklist
*   [ ] Did you copy ONLY the files in this folder? (Yes)
*   [ ] Did you exclude your private analysis? (Yes, we already did that)
*   [ ] Are the scripts generic? (Yes)

You are now ready to share your work with the community! 🌍
