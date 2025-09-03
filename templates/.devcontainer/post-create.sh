#!/bin/bash
# Post-create script for {{PROJECT_NAME}} development environment
# Automatically sets up MCP servers and project dependencies

set -e

echo "🚀 Setting up {{PROJECT_NAME}} development environment..."

# Verify Node.js installation (required for MCP servers)
echo "📦 Verifying Node.js installation..."
node --version
npm --version

# Verify MCP servers are installed globally
echo "🔧 Verifying MCP server installations..."
npm list -g --depth=0 | grep -E "(context7-mcp|brave-search-mcp|server-filesystem|server-git)" || {
    echo "⚠️  Some MCP servers missing, installing..."
    npm install -g @upstash/context7-mcp@latest
    npm install -g @brave/brave-search-mcp-server
    npm install -g @modelcontextprotocol/server-filesystem
    npm install -g @modelcontextprotocol/server-git
}

# Set up environment files for MCP credentials
echo "📄 Setting up MCP credentials template..."
if [ -f ".env.mcp.credentials.template" ]; then
    if [ ! -f ".env.mcp.credentials" ]; then
        cp .env.mcp.credentials.template .env.mcp.credentials
        echo "📝 Created .env.mcp.credentials - please add your API keys"
    fi
else
    echo "⚠️  .env.mcp.credentials.template not found"
fi

# Technology-specific setup (customize based on project type)
echo "🔧 Running technology-specific setup..."

# For Python projects:
if [ -f "requirements.txt" ] || [ -f "pyproject.toml" ]; then
    echo "🐍 Setting up Python environment..."
    
    # Create virtual environment if it doesn't exist
    if [ ! -d "venv" ]; then
        python3 -m venv venv
        echo "✅ Created Python virtual environment"
    fi
    
    # Activate virtual environment and install dependencies
    source venv/bin/activate
    pip install --upgrade pip
    
    if [ -f "requirements.txt" ]; then
        pip install -r requirements.txt
        echo "✅ Installed Python dependencies from requirements.txt"
    fi
    
    if [ -f "pyproject.toml" ]; then
        pip install -e .
        echo "✅ Installed project in development mode"
    fi
    
    deactivate
fi

# For Node.js projects:
if [ -f "package.json" ]; then
    echo "📦 Setting up Node.js environment..."
    npm install
    echo "✅ Installed Node.js dependencies"
fi

# For database projects:
if [ -f "docker-compose.yml" ] || [ -f ".devcontainer/docker-compose.yml" ]; then
    echo "🗄️  Database containers detected..."
    echo "💡 Run 'docker-compose up -d' to start database services"
fi

# Set up git configuration if not already configured
if [ -z "$(git config --global user.name)" ]; then
    echo "⚙️  Git user not configured. Please run:"
    echo "   git config --global user.name 'Your Name'"
    echo "   git config --global user.email 'your.email@example.com'"
fi

# Create initial project documentation if README doesn't exist
if [ ! -f "README.md" ]; then
    echo "📚 Creating initial README.md..."
    cat > README.md << EOF
# {{PROJECT_NAME}}

## Development Environment

This project uses a devcontainer for consistent development environments.

### Getting Started

1. Open this project in VS Code
2. When prompted, click "Reopen in Container"
3. Wait for the container to build and dependencies to install
4. Update \`.env.mcp.credentials\` with your API keys
5. Start developing!

### MCP Servers Configured

- **Context7**: Documentation research (no API key required)
- **Brave Search**: Web research (requires BRAVE_API_KEY)
- **Playwright**: Browser automation
- **Filesystem**: File operations
- **Git**: Version control operations

### Technology Stack

{{TECH_STACK}}

## Development Workflow

This project is configured for agentic coding with GitHub Copilot and MCP servers.
See \`.github/copilot-instructions.md\` for detailed development guidelines.
EOF
    echo "✅ Created initial README.md"
fi

echo ""
echo "🎉 Development environment setup complete!"
echo ""
echo "📋 Next steps:"
echo "  1. Update .env.mcp.credentials with your API keys"
echo "  2. Review .github/copilot-instructions.md for development guidelines"
echo "  3. Start developing with enhanced AI assistance!"
echo ""
echo "🔧 MCP servers are configured and ready for agentic workflow"
echo "🚀 Happy coding!"
