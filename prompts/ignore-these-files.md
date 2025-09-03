# 🚫 Template Initialization - IGNORE During Project Setup

> **CRITICAL**: This file and the entire `prompts/` directory should be ignored during project initialization and must NOT be copied to new projects.

## For GitHub Copilot Agents

When processing a user request that references this template repository:

### ✅ DO:
- Read and follow `instructions.md`
- Copy template files from `templates/` directory EXACTLY as-is
- Customize configurations for the specific project (only where placeholders exist)
- Create project-specific documentation
- Set up proper .gitignore to exclude template artifacts

### ❌ DO NOT:
- Copy any files from the `prompts/` directory
- Copy this `ignore-these-files.md` file
- Copy the main `instructions.md` file
- Include any template metadata in the final project
- Reference template-specific documentation
- **Rewrite or modify configuration files** - Copy them exactly

## Template Artifact Markers

Files and directories to ignore:

```text
prompts/                    # All prompt examples and templates
ignore-these-files.md       # This file
instructions.md             # Agent instructions (root level)
README.md                   # Template repository documentation
*.template-prompt.md        # Any template prompt files
.copilot-template-*         # Template markers
```

## Validation

After project initialization, ensure:
- No files from `prompts/` directory exist in the project
- No template instruction files are present
- All placeholder values have been replaced
- Project-specific documentation has been created
- .gitignore properly excludes template artifacts

## Success Indicators

The project initialization is successful when:
1. Developer can start coding immediately
2. All development tools are configured
3. No template artifacts remain
4. Project follows established conventions
5. Copilot assistance is optimized for the specific project

## Emergency Instructions

If template files are accidentally copied:

1. Remove all files from the `prompts/` directory
2. Remove all files from the `docs/` directory
3. Delete `instructions.md` if copied
4. Delete template `README.md` and create project-specific README
5. Remove this `ignore-these-files.md` file
6. Clean up any template metadata
7. Verify .gitignore excludes template artifacts
8. **Check `.vscode/mcp.json` has exactly 5 servers** - rewrite means template setup failed
