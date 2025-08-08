# MCP Server Setup Guide

This guide helps you set up API keys for the Model Context Protocol (MCP) servers that enhance GitHub Copilot's research capabilities.

## 🔍 Available MCP Servers

### Context7 (Documentation Research)
- **Purpose**: Free documentation and code research
- **API Key**: Not required
- **Status**: Ready to use immediately

### Brave Search (Web Research)
- **Purpose**: Real-time web search capabilities
- **API Key**: Required (free tier available)
- **Get Key**: [brave.com/search/api](https://brave.com/search/api)

### Filesystem & Git
- **Purpose**: Local file and repository access
- **API Key**: Not required
- **Status**: Configured automatically

## 🔑 Getting Your API Keys

### Brave Search API Key

1. **Visit the API Portal**
   - Go to [brave.com/search/api](https://brave.com/search/api)
   - Click "Get Started" or "Sign Up"

2. **Create Account**
   - Sign up with your email address
   - Verify your email if required

3. **Get Your API Key**
   - Navigate to your dashboard
   - Look for "API Keys" or "Credentials" section
   - Copy your API key

4. **Free Tier Limits**
   - 2,000 queries per month (free)
   - Rate limit: 1 query per second
   - Perfect for development and research

## ⚙️ Configuration Setup

### Prerequisites Check

Before setting up MCP servers, ensure you have:

```bash
# Check Node.js (required for MCP servers)
node --version
# Should show v18.0.0 or higher

# Check npx (comes with Node.js)
npx --version
# Should show 8.0.0 or higher

# Check VS Code version (MCP support requires 1.102+)
code --version
# First line should show 1.102.0 or higher
```

### Template-Based Setup

When GitHub Copilot initializes your project, it will:

1. **Copy Template Files**
   - `.env.mcp.credentials.template` → Your project
   - `.vscode/mcp.json` → Your project (with envFile configuration)

2. **Create Credentials File**
   - Copy `.env.mcp.credentials.template` to `.env.mcp.credentials`
   - Add your actual API keys to `.env.mcp.credentials`

3. **Automatic Loading**
   - VS Code loads credentials automatically via `envFile` configuration
   - No manual setup or scripts needed

### Manual Setup Steps

If you need to set up manually:

#### Step 1: Create Credentials File
```bash
# Copy the template
cp .env.mcp.credentials.template .env.mcp.credentials
```

#### Step 2: Add Your API Keys
Edit `.env.mcp.credentials`:
```bash
# MCP Server Credentials
# Never commit .env.mcp.credentials to version control!

# Brave Search API Key - Get from https://brave.com/search/api
BRAVE_API_KEY=your_actual_brave_search_api_key_here
```

#### Step 3: Verify Configuration
The `.vscode/mcp.json` should contain:
```json
{
  "servers": {
    "context7": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"]
    },
    "braveSearch": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@brave/brave-search-mcp-server"],
      "envFile": "${workspaceFolder}/.env.mcp.credentials"
    },
    "filesystem": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${workspaceFolder}"]
    },
    "git": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-git", "--repository", "${workspaceFolder}"]
    }
  }
}
```

## ✅ Testing Your Setup

### 1. Restart VS Code
After adding your API keys, restart VS Code to load the new configuration.

### 2. Check MCP Status
- Open VS Code
- The MCP servers should start automatically
- Check the Output panel (View → Output) for any MCP-related messages

### 3. Test with GitHub Copilot
Try asking GitHub Copilot research questions:
- "Search for the latest React best practices"
- "Find documentation about TypeScript generics"
- "What are the current Node.js LTS versions?"

## 🚨 Security Best Practices

### Credential Protection
- **Never commit** `.env.mcp.credentials` to version control
- The file is automatically gitignored
- Keep your API keys private and secure

### Environment Separation
- Use different API keys for development/production if needed
- Consider using API key rotation for enhanced security
- Monitor your API usage in the provider dashboards

## 🔧 Troubleshooting

### Common Issues

**MCP servers not starting:**
- Check Node.js version (18.0.0+)
- Verify VS Code version (1.102+)
- Restart VS Code after adding credentials

**Brave Search not working:**
- Verify API key is correct in `.env.mcp.credentials`
- Check API key hasn't expired
- Ensure you haven't exceeded rate limits

**Permission errors:**
- Check file permissions on `.env.mcp.credentials`
- Ensure VS Code can read the workspace folder

### Debug Commands
```bash
# Test Node.js MCP server installation
npx @upstash/context7-mcp@latest --help

# Check if Brave Search server can be installed
npx @brave/brave-search-mcp-server --help

# Verify environment file exists
ls -la .env.mcp.credentials
```

## 📚 Additional Resources

- [MCP Specification](https://spec.modelcontextprotocol.io/)
- [VS Code MCP Documentation](https://code.visualstudio.com/docs/copilot/copilot-mcp)
- [Brave Search API Documentation](https://brave.com/search/api)
- [Context7 MCP Server](https://github.com/context7/mcp-server)

## 🆘 Getting Help

If you encounter issues:
1. Check this troubleshooting guide
2. Verify your setup against the manual steps
3. Open an issue in the [template repository](https://github.com/andrelohmann/copilot-project-template)
4. Include your VS Code version, Node.js version, and error messages

---

*This guide is part of the copilot-project-template. Keep it updated as MCP servers and APIs evolve.*
