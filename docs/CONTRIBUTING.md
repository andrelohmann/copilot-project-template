# Contributing to Copilot Project Template

Thank you for your interest in contributing to the Copilot Project Template! This document provides guidelines for contributing to this template repository.

## 🎯 Purpose

This repository serves as a template for bootstrapping new projects with GitHub Copilot in agent mode. Contributions should focus on improving the template's effectiveness and coverage of different project types.

## 🤝 How to Contribute

### 1. Issues and Feature Requests

- **Bug Reports**: If you find issues with the template setup or instructions
- **Template Requests**: Suggest new project types or technology stacks to support
- **Improvements**: Propose enhancements to existing templates or documentation

### 2. Pull Requests

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Test the changes with a sample project
5. Commit using conventional commits: `feat: add Python Flask template`
6. Push to your fork and submit a pull request

### 3. Template Guidelines

When adding or modifying templates:

#### File Organization
- Place template files in appropriate subdirectories under `templates/`
- Use clear, descriptive filenames
- Include comments explaining complex configurations

#### Placeholder Standards
Use consistent placeholder patterns:
- `{{PROJECT_NAME}}` - Project name
- `{{TECH_STACK}}` - Technology stack description  
- `{{PROJECT_TYPE}}` - Type of project
- `{{DESCRIPTION}}` - Project description
- `{{AUTHOR}}` - Author information

#### Configuration Quality
- Use modern, best-practice configurations
- Include comprehensive but not overwhelming settings
- Ensure compatibility with latest tool versions
- Add appropriate comments for complex settings

#### Documentation
- Update `instructions.md` if adding new template types
- Add example prompts to `prompts/default-prompts.md`
- Document any special setup requirements

### 4. Testing Contributions

Before submitting:

1. **Test Template Application**
   - Create a sample project using your template
   - Verify all configurations work correctly
   - Test with different project scenarios

2. **Validate Instructions**
   - Ensure agent instructions are clear and complete
   - Test with different technology combinations
   - Verify placeholder replacement works

3. **Check Integration**
   - Ensure new templates integrate with existing structure
   - Verify VS Code settings and extensions work
   - Test Copilot instructions effectiveness

## 📝 Template Types We're Looking For

### High Priority
- **Rust Projects**: CLI tools, web services with Axum/Actix
- **Go Projects**: CLI tools, web services, microservices
- **Java/Kotlin**: Spring Boot applications
- **C#/.NET**: Web APIs, desktop applications
- **PHP**: Laravel/Symfony applications
- **Ruby**: Rails applications

### Medium Priority
- **Mobile**: Swift (iOS), Kotlin (Android)
- **Game Development**: Unity, Unreal Engine setups
- **DevOps**: Terraform, Kubernetes configurations
- **Data Engineering**: Apache Airflow, dbt, Spark

### Configuration Improvements
- **Testing Frameworks**: More comprehensive testing setups
- **CI/CD Pipelines**: GitHub Actions, GitLab CI templates
- **Docker**: Multi-stage builds, docker-compose setups
- **Database**: Migration scripts, seeding data

## 🔧 Technical Requirements

### Code Quality
- Follow existing code style and patterns
- Use appropriate linting and formatting tools
- Include type annotations where applicable
- Write clear, self-documenting code

### Documentation
- Use clear, concise language
- Include examples where helpful
- Keep instructions up-to-date
- Consider non-English speakers

### Compatibility
- Ensure cross-platform compatibility (Windows, macOS, Linux)
- Use current stable versions of tools and frameworks
- Avoid deprecated or experimental features in defaults
- Test on multiple environments when possible

## 🎨 Style Guidelines

### Markdown Files
- Use consistent heading levels
- Include table of contents for long documents
- Use code blocks with appropriate language tags
- Keep line length reasonable (80-100 characters)

### JSON/YAML Files
- Use consistent indentation (2 spaces)
- Sort keys alphabetically where order doesn't matter
- Include comments where helpful (in files that support them)
- Validate syntax before committing

### Code Templates
- Follow language-specific conventions
- Use meaningful variable and function names
- Include appropriate error handling
- Add comments for complex logic

## 🚀 Release Process

### Versioning
- We use semantic versioning for releases
- Breaking changes to template structure require major version bump
- New templates or minor improvements are minor versions
- Bug fixes are patch versions

### Documentation Updates
- Update README.md if adding major new features
- Update instructions.md for new template types
- Add changelog entries for significant changes

## 📞 Getting Help

- **Questions**: Open a discussion or issue
- **Complex Changes**: Discuss in an issue before implementing
- **Urgent Issues**: Tag maintainers in the issue

## 🏆 Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes for significant contributions
- Project documentation credits

Thank you for helping make project bootstrapping with GitHub Copilot more effective!
