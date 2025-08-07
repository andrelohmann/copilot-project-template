# 🚫 Template Initialization - IGNORE During Project Setup

> **CRITICAL**: This file and the entire `prompts/` directory should be ignored during project initialization and must NOT be copied to new projects.

## For GitHub Copilot Agents

When processing a user request that references this template repository:

### ✅ DO:
- Read and follow `instructions.md`
- Copy template files from `templates/` directory
- Customize configurations for the specific project
- Create project-specific documentation
- Set up proper .gitignore to exclude template artifacts

### ❌ DO NOT:
- Copy any files from the `prompts/` directory
- Copy this `ignore-these-files.md` file
- Copy the main `instructions.md` file
- Include any template metadata in the final project
- Reference template-specific documentation

## Template Artifact Markers

Files and directories to ignore:
```
prompts/                    # All prompt examples and templates
ignore-these-files.md       # This file
instructions.md             # Agent instructions (root level)
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
2. Delete `instructions.md` if copied
3. Remove this `ignore-these-files.md` file
4. Clean up any template metadata
5. Verify .gitignore excludes template artifacts
