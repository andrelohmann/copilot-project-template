# Copilot Project Template

This repository serves as a template and instruction set for bootstrapping new projects using GitHub Copilot in agent mode.

## 🚀 Quick Start

To use this template, simply reference this repository in your prompt to GitHub Copilot:

```
I want to create a new [PROJECT_TYPE] project using [TECHNOLOGY_STACK]. 
Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template
```

### 🔑 MCP Server Credentials (Optional)

For enhanced research capabilities, you can set up API keys. GitHub Copilot will automatically copy the credentials template for you:

**Setup process:**
1. **Template copied**: GitHub Copilot copies `.env.mcp.credentials.template` to your project
2. **Create credentials file**: Copy `.env.mcp.credentials.template` to `.env.mcp.credentials`
3. **Add your API key**: Replace `your_brave_search_api_key_here` with your actual API key
4. **Automatic loading**: VS Code loads credentials automatically via `envFile` configuration

**The credentials template contains:**
```bash
# MCP Server Credentials
# Never commit .env.mcp.credentials to version control!

# Brave Search API Key - Get from https://brave.com/search/api
BRAVE_API_KEY=your_brave_search_api_key_here
```

### Prerequisites

- **Node.js**: Required for MCP servers (download from [nodejs.org](https://nodejs.org/))
- **VS Code 1.102+**: Required for MCP support

### Required API Keys

- **Context7**: No API key required - free documentation research
- **Brave Search API**: Get your key from [brave.com/search/api](https://brave.com/search/api) for web research

📖 **Need help getting API keys?** See our [MCP Setup Guide](./docs/MCP-SETUP.md) for detailed instructions.

## 📋 What This Template Provides

- **Project Initialization**: Automated setup of project structure and dependencies
- **VS Code Configuration**: Pre-configured settings, extensions, and tasks
- **GitHub Copilot Instructions**: Project-specific guidance for ongoing development
- **MCP Servers**: Default Model Context Protocol servers for enhanced agent capabilities
- **Prompt Enhancement**: Automatic prompt rewriting and development history tracking
- **Development Workflows**: Best practices and automation for agent-assisted development

## 🤖 How It Works

When you reference this repository, GitHub Copilot will:

1. **Check prerequisites**: Verify Node.js and VS Code 1.102+ are available
2. Read these instructions and the detailed setup guide in [`instructions.md`](./instructions.md)
3. Copy relevant template files to your new project
4. Copy `.vscode/mcp.json` with MCP server configuration using `envFile`
5. Copy `.env.mcp.credentials.template` for user to create credentials file
6. Configure VS Code settings and recommended extensions
7. Set up MCP servers for enhanced research capabilities (Context7 + Brave Search)
8. Create GitHub Copilot instructions specific to your project
9. Initialize any necessary development tools and workflows

**The MCP configuration automatically loads credentials from `.env.mcp.credentials`** - just copy the template, add your API keys, and everything works automatically!

## 📁 Template Structure

```
copilot-project-template/
├── README.md                          # This file
├── instructions.md                    # Detailed setup instructions for agents
├── templates/                         # Template files for different project types
│   ├── .env.template                 # Project environment variables template
│   ├── .env.mcp.credentials.template # MCP server credentials template
│   ├── .prompts/                     # Prompt archive template
│   │   └── archive.md                # Template for prompt history tracking
│   ├── .vscode/                      # VS Code configuration templates
│   │   ├── mcp.json                  # MCP server configuration (uses envFile)
│   │   ├── settings.json             # VS Code editor settings
│   │   ├── extensions.json           # Recommended extensions
│   │   └── tasks.json                # Development tasks
│   ├── .github/                      # GitHub workflows and Copilot instructions
│   │   └── copilot-instructions.md   # Base Copilot instructions template
│   ├── configs/                      # Various configuration files
│   │   ├── eslint.config.js          # ESLint configuration
│   │   ├── prettier.config.js        # Prettier configuration
│   │   ├── tsconfig.json             # TypeScript configuration
│   │   ├── package.json              # Node.js package template
│   │   └── requirements.txt          # Python dependencies template
│   └── .gitignore                    # Git ignore patterns
├── prompts/                          # Default initialization prompts
└── docs/                            # Additional documentation
    ├── MCP-SETUP.md                  # API key setup guide
    ├── CONTRIBUTING.md               # Contribution guidelines
    └── USAGE.md                      # Detailed usage guide
```

## 🎯 Supported Project Types

This template supports various project types including:

- **Web Applications**: React, Next.js, Vue, Angular
- **Backend Services**: Node.js, Python (FastAPI, Django), Go
- **Desktop Applications**: Electron, Tauri
- **Mobile Applications**: React Native, Flutter
- **CLI Tools**: Python, Node.js, Go, Rust
- **Data Science**: Python (Jupyter, pandas, scikit-learn)
- **Machine Learning**: PyTorch, TensorFlow, Hugging Face

## 🔧 Customization

The template is designed to be flexible and can be customized for specific needs. See [`instructions.md`](./instructions.md) for details on how agents should adapt the template for different project requirements.

## 📖 For Developers

If you're a human developer looking to understand how this template works or want to contribute:

- See [`instructions.md`](./instructions.md) for the detailed agent instructions
- Check the [`templates/`](./templates/) directory for available template files
- Review [`prompts/`](./prompts/) for example initialization prompts

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues and enhancement requests.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
