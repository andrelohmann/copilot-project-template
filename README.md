# Copilot Project Template

This repository serves as a template and instruction set for bootstrapping new projects using GitHub Copilot in agent mode.

## 🚀 Quick Start

To use this template, simply reference this repository in your prompt to GitHub Copilot:

```
I want to create a new [PROJECT_TYPE] project using [TECHNOLOGY_STACK]. 
Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template
```

## 📋 What This Template Provides

- **Project Initialization**: Automated setup of project structure and dependencies
- **VS Code Configuration**: Pre-configured settings, extensions, and tasks
- **GitHub Copilot Instructions**: Project-specific guidance for ongoing development
- **MCP Servers**: Default Model Context Protocol servers for enhanced agent capabilities
- **Development Workflows**: Best practices and automation for agent-assisted development

## 🤖 How It Works

When you reference this repository, GitHub Copilot will:

1. Read these instructions and the detailed setup guide in [`instructions.md`](./instructions.md)
2. Copy relevant template files to your new project
3. Configure VS Code settings and recommended extensions
4. Set up GitHub Copilot instructions specific to your project
5. Initialize any necessary development tools and workflows

## 📁 Template Structure

```
copilot-project-template/
├── README.md                          # This file
├── instructions.md                    # Detailed setup instructions for agents
├── templates/                         # Template files for different project types
│   ├── .vscode/                      # VS Code configuration templates
│   ├── .github/                      # GitHub workflows and Copilot instructions
│   └── configs/                      # Various configuration files
├── prompts/                          # Default initialization prompts
└── docs/                            # Additional documentation
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
