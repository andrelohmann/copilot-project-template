# Agent Instructions for Project Initialization

> **Important**: This file contains instructions for GitHub Copilot agents. If you are a human developer, you can safely ignore this file unless you want to understand how the automation works.

## 🎯 Purpose

These instructions guide GitHub Copilot agents on how to bootstrap new projects using this template repository. When a user references `https://github.com/andrelohmann/copilot-project-template`, follow these steps.

## 📋 Initialization Steps

### 1. Project Analysis
First, analyze the user's request to determine:
- **Project type** (web app, CLI tool, API, etc.)
- **Technology stack** (React, Python, Node.js, etc.)
- **Specific requirements** (database, authentication, testing, etc.)
- **Target environment** (development setup preferences)

### 2. Template File Selection
Based on the project analysis, copy relevant template files from this repository:

#### Core Files (Always Copy)
- `.vscode/settings.json` → Project's `.vscode/settings.json`
- `.vscode/extensions.json` → Project's `.vscode/extensions.json`
- `.github/copilot-instructions.md` → Project's `.github/copilot-instructions.md`

#### Conditional Files (Copy Based on Project Type)
- **All Projects**: `templates/.vscode/` content
- **Web Projects**: `templates/web/` content
- **Python Projects**: `templates/python/` content
- **Node.js Projects**: `templates/nodejs/` content
- **Database Projects**: `templates/database/` content

### 3. VS Code Configuration

#### Extensions to Install
Always recommend these extensions:
- `GitHub.copilot` - GitHub Copilot
- `GitHub.copilot-chat` - GitHub Copilot Chat
- `ms-vscode.vscode-typescript-next` - TypeScript support
- `bradlc.vscode-tailwindcss` - Tailwind CSS support (for web projects)
- `ms-python.python` - Python support (for Python projects)

#### Settings Configuration
Apply the following base settings to `.vscode/settings.json`:
```json
{
  "github.copilot.enable": {
    "*": true,
    "yaml": false,
    "plaintext": false
  },
  "github.copilot.editor.enableAutoCompletions": true,
  "editor.inlineSuggest.enabled": true,
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue"
}
```

### 4. MCP Server Setup
Configure Model Context Protocol servers based on project type:

#### Default MCP Servers (All Projects)
- **File System Server**: For file operations
- **Git Server**: For version control operations
- **Terminal Server**: For command execution

#### Project-Specific MCP Servers
- **Web Projects**: HTTP server for API testing
- **Python Projects**: Python environment server
- **Database Projects**: Database connection server

### 5. GitHub Copilot Instructions
Create a comprehensive `.github/copilot-instructions.md` file with:
- Project-specific context and architecture
- Coding standards and conventions
- Testing requirements
- Deployment guidelines
- Technology-specific best practices

### 6. Ignore Template Prompts
**CRITICAL**: Always add the following to `.gitignore` to prevent template initialization prompts from being tracked:

```gitignore
# Template initialization files (do not track)
.copilot-template-init/
*.template-prompt.md
init-prompts.txt
```

Also, create a `.copilot-template-init/` directory with a `.gitkeep` file to mark the initialization as complete.

## 🔧 Template File Locations

### VS Code Templates
- `templates/.vscode/settings.json` - Base VS Code settings
- `templates/.vscode/extensions.json` - Recommended extensions
- `templates/.vscode/tasks.json` - Common tasks (build, test, etc.)

### GitHub Templates
- `templates/.github/copilot-instructions.md` - Base Copilot instructions template
- `templates/.github/workflows/` - CI/CD workflow templates

### Configuration Templates
- `templates/configs/eslint.config.js` - ESLint configuration
- `templates/configs/prettier.config.js` - Prettier configuration
- `templates/configs/tsconfig.json` - TypeScript configuration
- `templates/configs/requirements.txt` - Python dependencies template
- `templates/configs/package.json` - Node.js package template

## 🎨 Customization Guidelines

### Project-Specific Adaptations
1. **Technology Stack**: Modify configurations based on the specific frameworks/libraries
2. **Build Tools**: Set up appropriate build tools (Vite, Webpack, etc.)
3. **Testing**: Configure testing frameworks (Jest, Pytest, etc.)
4. **Linting**: Adapt linting rules to project conventions
5. **Deployment**: Add deployment-specific configurations

### File Modifications
When copying template files:
- Replace placeholder values (e.g., `{{PROJECT_NAME}}`, `{{TECH_STACK}}`)
- Merge with existing files rather than overwriting when possible
- Preserve any existing user configurations

## 🚫 Important Restrictions

### Do Not Copy These Files
- This `instructions.md` file
- Any files in the `prompts/` directory
- Template-specific documentation
- `.git/` directory or git-related metadata

### Initialization Markers
Always create these markers to indicate successful initialization:
- `.copilot-template-init/.gitkeep`
- Add template source comment in main configuration files

## 🔍 Validation Steps

After setup, verify:
1. All required extensions are listed in `.vscode/extensions.json`
2. Settings are properly configured in `.vscode/settings.json`
3. GitHub Copilot instructions are project-specific and comprehensive
4. Template initialization files are properly ignored
5. MCP servers are configured for the project type

## 📝 Documentation Updates

After initialization, update the project's README.md to include:
- Project description and goals
- Setup and installation instructions
- Development workflow
- Technology stack overview
- Contribution guidelines

## 🎯 Success Criteria

The initialization is successful when:
- The developer can immediately start coding with enhanced Copilot assistance
- All development tools are properly configured
- Project follows established conventions and best practices
- No template artifacts remain in the final project structure
