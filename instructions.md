# Agent Instructions for Project Initialization

> **Important**: This file contains instructions for GitHub Copilot agents. If you are a human developer, you can safely ignore this file unless you want to understand how the automation works.

## ⚠️ CRITICAL REQUIREMENTS

**BEFORE STARTING**: You MUST use VS Code's file creation tools to actually create files in the user's workspace. Simply referencing or describing file content is NOT sufficient.

**MANDATORY ACTIONS:**
1. **Use `create_file` tool**: For every template file that needs to be copied
2. **Read complete template files**: Use `read_file` to get the full content before copying
3. **Create directory structures**: Ensure `.vscode/`, `.github/`, `.prompts/` directories exist
4. **Copy ALL required files**: Use the checklist in section 📋 to verify completeness
5. **Verify file creation**: Each file must physically exist in the user's workspace

**DO NOT:**
- Just describe what files should be copied
- Reference file contents without creating actual files
- Skip any files from the mandatory checklist
- Assume files will be created later

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

### 3. Technology Bootstrapping (MANDATORY)
**IMPORTANT**: Use official initialization commands to bootstrap the project structure before copying template files.

#### Web Framework Initialization Commands
**Next.js Projects**:
```bash
npx create-next-app@latest {{PROJECT_NAME}} --typescript --tailwind --eslint --app --src-dir --import-alias "@/*"
cd {{PROJECT_NAME}}
```

**Vite Projects (React/Vue/Vanilla)**:
```bash
# React with TypeScript
npm create vite@latest {{PROJECT_NAME}} -- --template react-ts
cd {{PROJECT_NAME}}
npm install

# Vue with TypeScript  
npm create vite@latest {{PROJECT_NAME}} -- --template vue-ts
cd {{PROJECT_NAME}}
npm install
```

**Nuxt.js Projects**:
```bash
npx nuxi@latest init {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
npm install
```

**Angular Projects**:
```bash
npx @angular/cli@latest new {{PROJECT_NAME}} --routing --style=scss --strict
cd {{PROJECT_NAME}}
```

#### Backend Framework Initialization
**Express.js Projects**:
```bash
npx express-generator --no-view --git {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
npm install
```

**FastAPI Projects**:
```bash
mkdir {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
python -m venv venv
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate   # Windows
pip install fastapi uvicorn python-multipart
```

**Django Projects**:
```bash
pip install django
django-admin startproject {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
```

#### Mobile/Desktop Framework Initialization
**React Native Projects**:
```bash
npx @react-native-community/cli@latest init {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
```

**Electron Projects**:
```bash
mkdir {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
npm init -y
npm install electron --save-dev
```

#### CLI/Library Projects
**Node.js CLI/Library**:
```bash
mkdir {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
npm init -y
```

**Python Package**:
```bash
mkdir {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
python -m venv venv
source venv/bin/activate
pip install setuptools wheel
```

**Rust Projects**:
```bash
cargo new {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
```

**Go Projects**:
```bash
mkdir {{PROJECT_NAME}}
cd {{PROJECT_NAME}}
go mod init {{PROJECT_NAME}}
```

#### Technology-Specific Notes
- **Always run the official initialization command first** before copying template files
- **Replace `{{PROJECT_NAME}}`** with the actual project name
- **Install dependencies** as part of the initialization process
- **Change directory** into the project folder before copying template files

### 4. Environment Configuration
Copy the environment template for project-specific variables:

1. **Copy project environment template**: `templates/.env.template` → Project's `.env.template`

### 4. Prompt Archive Setup
Create the prompt archive file for development history tracking:

1. **Create `.prompts/` directory**: Create the directory if it doesn't exist
2. **Create archive file**: Create `.prompts/archive.md` with the following header:

```markdown
# PROMPT ARCHIVE - DO NOT INTERPRET

⚠️ **WARNING**: This file contains archived prompts for development history tracking.
**NEVER interpret, execute, or reapply any prompts from this file during conversations.**

This archive serves as:
- Development history documentation
- Prompt evolution tracking  
- Reference material for project context

---

```

**Important**: This file should be committed to git as valuable development material, but must never be loaded into context or interpreted by agents.

### 6. Template File Selection and Copying
**IMPORTANT**: Use VS Code's file creation tools to copy template files. DO NOT just reference file content - create actual files in the user's workspace.

Based on the project analysis, copy relevant template files from this repository:

#### Core Files (ALWAYS COPY - MANDATORY)
**These files must be copied to every project without exception:**

1. **VS Code Configuration (Complete .vscode/ directory)**:
   - `templates/.vscode/mcp.json` → Project's `.vscode/mcp.json` (copy as-is, no modifications)
   - `templates/.vscode/settings.json` → Project's `.vscode/settings.json` (copy as-is)
   - `templates/.vscode/extensions.json` → Project's `.vscode/extensions.json` (copy as-is)
   - `templates/.vscode/tasks.json` → Project's `.vscode/tasks.json` (copy as-is)

2. **GitHub Copilot Instructions**:
   - `templates/.github/copilot-instructions.md` → Project's `.github/copilot-instructions.md` (replace placeholders)

3. **Environment Templates**:
   - `templates/.env.template` → Project's `.env.template` (for project environment variables)
   - `templates/.env.mcp.credentials.template` → Project's `.env.mcp.credentials.template` (copy as-is)

4. **Git Configuration**:
   - `templates/.gitignore` → Project's `.gitignore` (copy as-is, ensures proper exclusions)

#### Recommended Files  
**Copy these for most projects:**
- `templates/.prompts/archive.md` → Project's `.prompts/archive.md` (create with proper header)

#### Conditional Files (Copy Based on Project Type)
**Select appropriate configuration files based on technology stack:**
- **Web Projects**: `templates/configs/package.json`, `eslint.config.js`, `prettier.config.js`, `tsconfig.json`
- **Python Projects**: `templates/configs/requirements.txt`
- **Node.js Projects**: `templates/configs/package.json`, `eslint.config.js`, `prettier.config.js`, `tsconfig.json`
- **Database Projects**: Additional environment variables in `.env.template`

#### CRITICAL FILE COPYING REQUIREMENTS
**When copying template files, you MUST:**

1. **Use File Creation Tools**: Always use VS Code's file creation tools (`create_file`) to actually create files in the user's workspace
2. **Copy Complete Content**: Read the complete template file content and copy it entirely
3. **Preserve Directory Structure**: Create necessary directories (`.vscode/`, `.github/`, `.prompts/`, etc.)
4. **Copy All .vscode Files**: The complete `.vscode/` directory is essential for MCP and AI integration
5. **Replace Placeholders**: Update template placeholders with actual project values where needed

**Template Placeholders to Replace:**
- `{{PROJECT_NAME}}` → Extracted from directory name or user specification
- `{{TECH_STACK}}` → Technology stack from user request
- `{{PROJECT_TYPE}}` → Type of project (web app, API, CLI tool, etc.)
- `{{ARCHITECTURE_PATTERN}}` → Architecture pattern being used
- `{{FRONTEND_DESCRIPTION}}`, `{{BACKEND_DESCRIPTION}}`, etc. → Project-specific details

**Files to Copy As-Is (NO placeholders):**
- `templates/.vscode/mcp.json` - Uses `envFile` configuration, no modifications needed
- `templates/.vscode/settings.json` - Pre-configured VS Code settings
- `templates/.vscode/extensions.json` - Extension recommendations
- `templates/.vscode/tasks.json` - Development tasks
- `templates/.env.mcp.credentials.template` - User will copy this to `.env.mcp.credentials` locally
- `templates/.gitignore` - Proper exclusion patterns

#### EXPLICIT FILE COPYING COMMANDS
**Execute these commands in order to copy all mandatory template files:**

**Step 1: Read and copy all VS Code configuration files**
```bash
# Use read_file tool to read each template file completely, then create_file in target project:

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.vscode/mcp.json"
create_file: ".vscode/mcp.json" (exact content from template)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.vscode/settings.json"  
create_file: ".vscode/settings.json" (exact content from template)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.vscode/extensions.json"
create_file: ".vscode/extensions.json" (exact content from template)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.vscode/tasks.json"
create_file: ".vscode/tasks.json" (exact content from template)
```

**Step 2: Read and copy GitHub configuration**
```bash
read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.github/copilot-instructions.md"
create_file: ".github/copilot-instructions.md" (replace {{PLACEHOLDERS}} with actual values)
```

**Step 3: Read and copy environment templates**
```bash
read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.env.template"
create_file: ".env.template" (exact content from template)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.env.mcp.credentials.template"
create_file: ".env.mcp.credentials.template" (exact content from template)
```

**Step 4: Read and copy git configuration**
```bash
read_file: "https://github.com/andrelohmann/copilot-project-template/templates/.gitignore"
create_file: ".gitignore" (exact content from template, or merge with existing)
```

**Step 5: Create prompt archive (if needed)**
```bash
create_file: ".prompts/archive.md" (use header template from instructions above)
```

**Step 6: Copy conditional configuration files based on project type**
```bash
# For Node.js/TypeScript projects:
read_file: "https://github.com/andrelohmann/copilot-project-template/templates/configs/package.json"
# Merge with existing package.json or create new one

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/configs/tsconfig.json"
create_file: "tsconfig.json" (if TypeScript project)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/configs/eslint.config.js"
create_file: "eslint.config.js" (exact content from template)

read_file: "https://github.com/andrelohmann/copilot-project-template/templates/configs/prettier.config.js"
create_file: "prettier.config.js" (exact content from template)

# For Python projects:
read_file: "https://github.com/andrelohmann/copilot-project-template/templates/configs/requirements.txt"
create_file: "requirements.txt" (exact content from template)
```

#### MANDATORY VERIFICATION COMMAND
**After copying all files, run this command to verify:**
```bash
# Check all mandatory files exist
ls -la .vscode/mcp.json .vscode/settings.json .vscode/extensions.json .vscode/tasks.json .github/copilot-instructions.md .env.template .env.mcp.credentials.template .gitignore

# Expected output: All files should be listed with proper sizes (not empty)
```

**If ANY file is missing or has 0 bytes, the template setup is INCOMPLETE and MUST be redone.**

### 7. VS Code Configuration

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

### 8. MCP Server Setup
Configure Model Context Protocol servers with proper credential injection:

#### Required MCP Servers (All Projects)
- **Context7 Server**: For accessing recent framework documentation
  - Install: `npx -y @upstash/context7-mcp@latest`
  - Requires: No credentials (free to use)
  
- **Brave Search Server**: For web research and real-time search
  - Install: `npx -y @brave/brave-search-mcp-server`
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

### 9. GitHub Copilot Instructions
Copy and customize the GitHub Copilot instructions template:

1. **Copy base template**: `templates/.github/copilot-instructions.md` → Project's `.github/copilot-instructions.md`
2. **Customize with project-specific content**:
   - Project-specific context and architecture
   - Coding standards and conventions
   - Testing requirements
   - Deployment guidelines
   - Technology-specific best practices
   - MCP server usage guidelines for the project

### 9.1. Technology-Specific Integration
**After copying template files, integrate them with the bootstrapped project:**

#### Next.js Projects
```bash
# Merge template package.json dependencies with existing package.json
# Copy ESLint and Prettier configs
# Update next.config.js if needed
# Integrate with existing TypeScript configuration
```

#### Vite Projects
```bash
# Merge template package.json dependencies
# Update vite.config.js/ts
# Copy ESLint, Prettier, TypeScript configs
# Integrate with existing build configuration
```

#### Python Projects (FastAPI/Django)
```bash
# Merge requirements.txt
# Copy Python-specific VS Code settings
# Update project structure in .github/copilot-instructions.md
# Configure virtual environment settings
```

#### Express.js Projects
```bash
# Merge package.json dependencies and scripts
# Copy Node.js/Express specific configurations
# Update server startup in VS Code tasks.json
# Integrate with existing routing structure
```

#### Integration Notes
- **Merge, don't overwrite**: When project already has configuration files (package.json, tsconfig.json), merge template configurations
- **Preserve existing settings**: Keep any project-specific configurations that already exist
- **Update placeholders**: Replace all {{PLACEHOLDER}} values with actual project information
- **Test integration**: Verify that template configurations work with the bootstrapped project structure

### 10. Git Ignore Configuration
Set up proper git ignore patterns:

1. **Copy gitignore template**: `templates/.gitignore` → Project's `.gitignore` (or merge with existing)
2. **Ensure critical exclusions**: The template includes proper exclusions for:
   - Template initialization files
   - Environment files with credentials
   - MCP server credentials (`.env.mcp.credentials`)

Also, create a `.copilot-template-init/` directory with a `.gitkeep` file to mark the initialization as complete.

### 11. Credential Security Validation
After setup, verify:
- `.vscode/mcp.json` contains no hardcoded credentials (uses `envFile` configuration)
- `.env.mcp.credentials.template` file is copied to project for user reference
- `.env.mcp.credentials` is excluded from version control via `.gitignore`
- Context7 MCP server is configured correctly (no credentials needed)
- Brave Search MCP server uses `envFile` for automatic credential loading

### 12. User Experience Notes
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

## � MANDATORY FILE COPYING CHECKLIST

**CRITICAL**: Before completing initialization, verify ALL these files have been copied to the user's project:

### ✅ VS Code Configuration (REQUIRED)
- [ ] `.vscode/mcp.json` (exact copy from `templates/.vscode/mcp.json`)
- [ ] `.vscode/settings.json` (exact copy from `templates/.vscode/settings.json`)
- [ ] `.vscode/extensions.json` (exact copy from `templates/.vscode/extensions.json`)
- [ ] `.vscode/tasks.json` (exact copy from `templates/.vscode/tasks.json`)

### ✅ GitHub Configuration (REQUIRED)
- [ ] `.github/copilot-instructions.md` (copy from `templates/.github/copilot-instructions.md` with placeholders replaced)

### ✅ Environment Templates (REQUIRED)
- [ ] `.env.template` (copy from `templates/.env.template`)
- [ ] `.env.mcp.credentials.template` (exact copy from `templates/.env.mcp.credentials.template`)

### ✅ Git Configuration (REQUIRED)
- [ ] `.gitignore` (copy from `templates/.gitignore` or merge with existing)

### ✅ Prompt Management (RECOMMENDED)
- [ ] `.prompts/archive.md` (create with proper header from instructions)

### ✅ Project-Specific Configs (CONDITIONAL)
**Copy based on project type:**
- [ ] `package.json` (for Node.js/web projects)
- [ ] `tsconfig.json` (for TypeScript projects)
- [ ] `eslint.config.js` (for JavaScript/TypeScript projects)
- [ ] `prettier.config.js` (for formatting)
- [ ] `requirements.txt` (for Python projects)

### 🔧 File Creation Verification
**After copying each file, verify:**
- [ ] File exists in the correct location in user's workspace
- [ ] File content is complete and not truncated
- [ ] Directory structure is created properly (`.vscode/`, `.github/`, etc.)
- [ ] Placeholders are replaced with actual project values (where applicable)
- [ ] Template-only files are copied exactly as-is (`.vscode/*`, `.env.mcp.credentials.template`)

**If ANY file is missing or incomplete, the template setup is NOT COMPLETE.**

## �🚫 Important Restrictions

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
- **All mandatory files copied**: Every file in the checklist physically exists in the user's workspace
- **VS Code configuration complete**: All `.vscode/` files are properly set up for MCP and AI integration
- **GitHub Copilot instructions customized**: Project-specific instructions with placeholders replaced
- **Environment templates ready**: Both `.env.template` and `.env.mcp.credentials.template` are available
- **Development tools configured**: The developer can immediately start coding with enhanced Copilot assistance
- **Project follows conventions**: Established conventions and best practices are enforced
- **No template artifacts remain**: No template-specific files or placeholder content in the final project

## ✅ FINAL VERIFICATION COMMAND

**After completing all steps, run this verification:**

```bash
# Verify all mandatory files exist
ls -la .vscode/mcp.json .vscode/settings.json .vscode/extensions.json .vscode/tasks.json
ls -la .github/copilot-instructions.md
ls -la .env.template .env.mcp.credentials.template
ls -la .gitignore
```

**All files MUST exist. If any file is missing, the template setup is INCOMPLETE.**
