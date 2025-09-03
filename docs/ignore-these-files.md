# 🚫 DOCS Directory - NEVER COPY TO PROJECTS

> **CRITICAL WARNING**: This entire `docs/` directory contains template documentation and must NEVER be copied to generated projects.

## For GitHub Copilot Agents

**🚨 ABSOLUTE PROHIBITION**: Do NOT copy any files from this `docs/` directory when initializing projects.

### Files in this directory are template documentation:
- `MCP-SETUP.md` - API key setup guide for template users
- `USAGE.md` - Usage examples and patterns for template users  
- `CONTRIBUTING.md` - Contribution guidelines for template repository
- `ignore-these-files.md` - This warning file

### Why these files must NOT be copied:
- **Template-specific**: Documentation about how to use this template repository
- **Not project-specific**: Not relevant to generated projects
- **Confusing to users**: Would provide wrong setup instructions
- **Incorrect context**: References template repository, not user's project

## What to do instead:
- **Create project-specific documentation** in the generated project
- **Write custom README.md** explaining the actual project
- **Add setup instructions** relevant to the specific technology stack
- **Include project-specific contribution guidelines** if needed

## Verification:
After project initialization, the generated project should have:
- ✅ **NO `docs/` directory** from this template
- ✅ **Custom README.md** describing the actual project
- ✅ **Project-specific setup instructions**
- ✅ **No references** to this template repository in documentation

## Emergency cleanup:
If files from `docs/` were accidentally copied:
1. **Delete the entire `docs/` directory** from the generated project
2. **Create project-specific README.md** 
3. **Write custom setup instructions** for the actual project
4. **Remove any references** to the template repository

---

**Remember**: This is template infrastructure documentation, not project documentation.
