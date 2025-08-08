# Agent Instructions for Project Initialization

> **Important**: This file contains instructions for GitHub Copilot agents. If you are a human developer, you can safely ignore this file unless you want to understand how the automation works.

## 🎯 Purpose

These instructions guide GitHub Copilot agents on how to bootstrap new projects using this template repository. When a user references `https://github.com/andrelohmann/copilot-project-template`, follow these steps.

## 📋 Initialization Steps

### 1. MCP Credentials Setup
**COPY TEMPLATE FILE**: Copy the MCP credentials template from this repository.

**How it works**:
- Copy `templates/.env.mcp.credentials.template` → Project's `.env.mcp.credentials.template`
- User copies `.env.mcp.credentials.template` to `.env.mcp.credentials` and adds their actual API keys
- VS Code automatically loads credentials from `.env.mcp.credentials` using the `envFile` configuration
- No scripts needed, no prompts, credentials persist across sessions

**Prerequisites check**:
- Verify Node.js is available: `node --version` and `npx --version`
- VS Code 1.102+ required for MCP support

Required API keys:
- `BRAVE_API_KEY` - For web research via Brave Search MCP server
- Context7 MCP server requires no API key or credentials

### 2. Project Analysis
First, analyze the user's request to determine:
- **Project type** (web app, CLI tool, API, etc.)
- **Technology stack** (React, Python, Node.js, etc.)
- **Specific requirements** (database, authentication, testing, etc.)
- **Target environment** (development setup preferences)

### 3. Environment Configuration
Copy the environment template for project-specific variables:

1. **Copy project environment template**: `templates/.env.template` → Project's `.env.template`

### 4. Template File Selection
Based on the project analysis, copy relevant template files from this repository:

#### Core Files (Always Copy)
- `templates/.vscode/mcp.json` → Project's `.vscode/mcp.json` (no placeholder replacement needed)
- `templates/.vscode/settings.json` → Project's `.vscode/settings.json`
- `templates/.vscode/extensions.json` → Project's `.vscode/extensions.json`
- `templates/.github/copilot-instructions.md` → Project's `.github/copilot-instructions.md`

#### Recommended Files  
- `templates/.env.template` → Project's `.env.template` (for project environment variables)
- `templates/.env.mcp.credentials.template` → Project's `.env.mcp.credentials.template` (for MCP server credentials)

#### Conditional Files (Copy Based on Project Type)
- **All Projects**: `templates/.vscode/` content, `templates/.github/` content
- **Web Projects**: Select relevant configs from `templates/configs/` (package.json, eslint.config.js, prettier.config.js, tsconfig.json)
- **Python Projects**: Select relevant configs from `templates/configs/` (requirements.txt)
- **Node.js Projects**: Select relevant configs from `templates/configs/` (package.json, eslint.config.js, prettier.config.js, tsconfig.json)
- **Database Projects**: Additional environment variables in `.env.mcp.credentials` for database connections

#### Critical File Handling
When copying template files:
- **Copy `templates/.vscode/mcp.json` as-is** - No placeholder replacement needed, uses `envFile` configuration
- **Copy `templates/.env.mcp.credentials.template` as-is** - User will copy this to `.env.mcp.credentials` locally
- **MCP Credentials** - Uses `envFile: "${workspaceFolder}/.env.mcp.credentials"` to load credentials automatically
- **Secure Storage** - Credentials stay in local `.env.mcp.credentials` file (excluded from version control)
- **Prerequisites** - Verify Node.js/npx availability before proceeding

Standard placeholders for other files:
- `{{PROJECT_NAME}}` → Extracted from directory name or user specification
- `{{TECH_STACK}}` → Technology stack from user request

Note: 
- Context7 requires no credentials
- Brave Search requires `BRAVE_API_KEY` in `.env.mcp.credentials`

### 5. VS Code Configuration

#### Extensions to Install
Always recommend these extensions:
- `GitHub.copilot` - GitHub Copilot
- `GitHub.copilot-chat` - GitHub Copilot Chat
- `ms-vscode.vscode-typescript-next` - TypeScript support
- `bradlc.vscode-tailwindcss` - Tailwind CSS support (for web projects)
- `ms-python.python` - Python support (for Python projects)

**Note**: MCP support is built into VS Code 1.102+ and doesn't require separate extensions.

#### Settings Configuration
Copy `templates/.vscode/settings.json` directly - it contains the proper VS Code settings:

**The template file already contains:**
- GitHub Copilot configuration
- Editor settings for auto-completion
- Format on save settings
- Other development-friendly defaults

**Simply copy `templates/.vscode/settings.json` as-is** - no modifications needed.

#### MCP Server Configuration
Copy `templates/.vscode/mcp.json` directly from the templates folder - it contains the correct `envFile` configuration:

**The template file already contains the proper configuration:**
- Uses `envFile: "${workspaceFolder}/.env.mcp.credentials"` for automatic credential loading
- Context7 server (no credentials needed)
- Brave Search server (credentials from `.env.mcp.credentials`)
- Filesystem and Git servers for enhanced capabilities

**Simply copy `templates/.vscode/mcp.json` as-is** - no modifications needed.

This configuration:
- Uses `envFile` to automatically load credentials from `.env.mcp.credentials`
- Requires no manual environment variable setup
- Works seamlessly with VS Code's built-in credential loading
- Can be safely committed to version control (no credentials in file)

### 6. MCP Server Setup
Configure Model Context Protocol servers with proper credential injection:

#### Required MCP Servers (All Projects)
- **Context7 Server**: For accessing recent framework documentation
  - Install: `npx -y @context7/mcp-server`
  - Requires: No credentials (free to use)
  
- **Brave Search Server**: For web research capabilities
  - Install: `npx -y @brave/mcp-server`
  - Requires: `BRAVE_API_KEY` from user's `.env.mcp.credentials` file

- **File System Server**: For file operations
  - Install: `npx -y @modelcontextprotocol/server-filesystem`
  - No credentials required

- **Git Server**: For version control operations
  - Install: `npx -y @modelcontextprotocol/server-git`
  - No credentials required

#### MCP Server Configuration Process
1. **Copy mcp.json**: Copy `templates/.vscode/mcp.json` as-is (no modifications needed)
2. **Copy credentials template**: Copy `templates/.env.mcp.credentials.template` to project
3. **Automatic Loading**: VS Code loads credentials automatically via `envFile` configuration
4. **User adds API keys**: User copies `.env.mcp.credentials.template` to `.env.mcp.credentials` and adds actual keys
5. **Ready to use**: MCP servers start automatically with credentials loaded

**Important**: This approach uses VS Code's `envFile` feature for automatic credential loading while keeping credentials in a local file excluded from version control.

#### Project-Specific MCP Servers
- **Web Projects**: HTTP server for API testing
- **Python Projects**: Python environment server
- **Database Projects**: Database connection server (requires additional credentials in `.env.mcp.credentials`)

### 7. GitHub Copilot Instructions
Copy and customize the GitHub Copilot instructions template:

1. **Copy base template**: `templates/.github/copilot-instructions.md` → Project's `.github/copilot-instructions.md`
2. **Customize with project-specific content**:
   - Project-specific context and architecture
   - Coding standards and conventions
   - Testing requirements
   - Deployment guidelines
   - Technology-specific best practices
   - MCP server usage guidelines for the project

### 8. Git Ignore Configuration
Set up proper git ignore patterns:

1. **Copy gitignore template**: `templates/.gitignore` → Project's `.gitignore` (or merge with existing)
2. **Ensure critical exclusions**: The template includes proper exclusions for:
   - Template initialization files
   - Environment files with credentials
   - MCP server credentials (`.env.mcp.credentials`)

Also, create a `.copilot-template-init/` directory with a `.gitkeep` file to mark the initialization as complete.

### 9. Credential Security Validation
After setup, verify:
- `.vscode/mcp.json` contains no hardcoded credentials (uses `envFile` configuration)
- `.env.mcp.credentials.template` file is copied to project for user reference
- `.env.mcp.credentials` is excluded from version control via `.gitignore`
- Context7 MCP server is configured correctly (no credentials needed)
- Brave Search MCP server uses `envFile` for automatic credential loading

### 10. User Experience Notes
Inform the user about the streamlined credential management:

**Simplified envFile Approach:**
1. **Credentials template copied**: `.env.mcp.credentials.template` file is copied to project for user reference
2. **User creates credentials file**: User copies template to `.env.mcp.credentials` and adds actual API keys  
3. **Automatic loading**: VS Code loads credentials automatically via `envFile` configuration
4. **No scripts needed**: No helper scripts or manual environment loading required
5. **Persistent and secure**: Credentials stay local, excluded from version control

This approach provides the best of both worlds:
- **Convenience**: No repeated prompts or setup steps
- **Security**: Credentials never committed to version control
- **Simplicity**: Uses VS Code's native `envFile` support
- **Team-friendly**: Configuration files can be safely shared

## 🔧 Template File Locations

### VS Code Templates
- `templates/.vscode/mcp.json` - MCP server configuration with envFile
- `templates/.vscode/settings.json` - Base VS Code settings
- `templates/.vscode/extensions.json` - Recommended extensions
- `templates/.vscode/tasks.json` - Common tasks (build, test, etc.)

### Environment Templates
- `templates/.env.template` - Project environment variables template
- `templates/.env.mcp.credentials.template` - MCP server credentials template

### GitHub Templates
- `templates/.github/copilot-instructions.md` - Base Copilot instructions template

### Configuration Templates
- `templates/configs/eslint.config.js` - ESLint configuration
- `templates/configs/prettier.config.js` - Prettier configuration
- `templates/configs/tsconfig.json` - TypeScript configuration
- `templates/configs/requirements.txt` - Python dependencies template
- `templates/configs/package.json` - Node.js package template

### Other Templates
- `templates/.gitignore` - Git ignore patterns including credential exclusions

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
