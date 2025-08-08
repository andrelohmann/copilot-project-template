# Template Usage Guide

This guide explains how to effectively use the Copilot Project Template for different scenarios and project types.

## 🚀 Quick Start Examples

### For Users (Prompting Copilot)

#### Basic Web Application
```
Create a React TypeScript application with Tailwind CSS. 
Use the setup from https://github.com/andrelohmann/copilot-project-template
```

#### Full-Stack Application
```
I need a Next.js app with TypeScript, PostgreSQL database, and authentication. 
Follow the instructions from https://github.com/andrelohmann/copilot-project-template
```

#### Backend API
```
Create a Python FastAPI service with PostgreSQL and authentication.
Please use https://github.com/andrelohmann/copilot-project-template for setup.
```

### For Agents (Implementation Guide)

When you encounter a request referencing this template:

1. **Read the instructions**: Start with `instructions.md`
2. **Analyze the request**: Determine project type and tech stack
3. **Apply templates**: Copy relevant files from `templates/`
4. **Customize**: Replace placeholders and adapt to specific needs
5. **Ignore prompts**: Never copy files from `prompts/` directory

## 📁 Template Structure Explained

### Core Templates
- **`templates/.vscode/`**: Editor configuration, extensions, tasks, MCP server setup
- **`templates/.github/`**: Copilot instructions, workflows
- **`templates/configs/`**: Language-specific configurations
- **`templates/.env.mcp.credentials.template`**: MCP server credentials template
- **`templates/.gitignore`**: Git ignore patterns including credential exclusions

### Project-Specific Templates
- **Web Applications**: React, Vue, Angular configurations
- **Backend Services**: API server configurations
- **CLI Tools**: Command-line application setups
- **Data Science**: Jupyter, analysis tool configurations

## 🎯 Customization Patterns

### Technology Stack Adaptation

**Frontend Frameworks**
- React: Use Vite + TypeScript + Tailwind template
- Vue: Adapt with Vue-specific tooling
- Angular: Use Angular CLI configuration

**Backend Frameworks**
- Express.js: Node.js API template
- FastAPI: Python service template
- Django: Full-stack Python template

**Databases**
- PostgreSQL: Include pg drivers and connection configs
- MongoDB: Include mongoose/motor configurations
- Redis: Add caching and session storage

### Environment Configuration

**Development Setup**
- VS Code settings for optimal development experience
- Linting and formatting tools configuration
- Development server and hot reload setup

**Production Setup**
- Build optimization settings
- Environment variable management
- Deployment configuration templates

## 🛠️ Advanced Usage

### Custom Project Types

For project types not directly supported:

1. **Start with closest template**: Use similar technology template
2. **Adapt configurations**: Modify for specific framework
3. **Add specialized tools**: Include project-specific dependencies
4. **Update instructions**: Customize Copilot instructions for the domain

### Multi-Service Projects

For microservices or monorepos:

1. **Create workspace structure**: Set up multi-folder workspace
2. **Apply per-service templates**: Use appropriate template for each service
3. **Add orchestration**: Include docker-compose or Kubernetes configs
4. **Unified tooling**: Set up shared linting, testing, deployment

### Integration Patterns

**Database Integration**
```javascript
// Example: Adding PostgreSQL to a Node.js project
// Package.json dependencies
"pg": "^8.11.0",
"@types/pg": "^8.10.0"

// Environment configuration
DATABASE_URL=postgresql://user:password@localhost:5432/dbname
```

**Authentication Setup**
```python
# Example: Adding JWT auth to FastAPI
# requirements.txt
python-jose[cryptography]>=3.3.0
passlib[bcrypt]>=1.7.4

# Environment configuration
SECRET_KEY=your-secret-key-here
ALGORITHM=HS256
```

**Testing Configuration**
```json
// Example: Jest configuration for React
{
  "scripts": {
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "jest": {
    "testEnvironment": "jsdom",
    "setupFilesAfterEnv": ["<rootDir>/src/setupTests.ts"]
  }
}
```

## 🔄 Workflow Integration

### Development Workflow

1. **Project Initialization**: Template sets up the basic structure
2. **Development**: Optimized VS Code settings enhance productivity
3. **Code Quality**: Linting and formatting tools maintain standards
4. **Testing**: Testing frameworks and configurations ready to use
5. **Deployment**: Basic deployment configurations included

### Collaboration Workflow

1. **Consistent Setup**: All team members get the same development environment
2. **Shared Standards**: Unified code formatting and linting rules
3. **Documentation**: Project-specific Copilot instructions help onboarding
4. **Automation**: Pre-configured tasks and workflows reduce manual work

## 🎨 Customization Examples

### Styling Framework Integration

**Tailwind CSS Setup**
```javascript
// tailwind.config.js
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

**Styled Components Setup**
```javascript
// For React projects preferring CSS-in-JS
import styled from 'styled-components'

const StyledComponent = styled.div`
  color: ${props => props.theme.primary};
`
```

### State Management Integration

**Redux Toolkit (React)**
```javascript
// store configuration
import { configureStore } from '@reduxjs/toolkit'
import { apiSlice } from './api/apiSlice'

export const store = configureStore({
  reducer: {
    api: apiSlice.reducer,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware().concat(apiSlice.middleware),
})
```

**Pinia (Vue)**
```javascript
// stores/counter.js
import { defineStore } from 'pinia'

export const useCounterStore = defineStore('counter', {
  state: () => ({ count: 0 }),
  actions: {
    increment() {
      this.count++
    },
  },
})
```

## 🐛 Troubleshooting

### Common Issues

**Template Not Applying**
- Verify the repository URL is correctly referenced
- Check that instructions.md is accessible
- Ensure agent is following the setup steps

**Missing Dependencies**
- Check package.json or requirements.txt for all needed dependencies
- Verify version compatibility
- Update to latest stable versions if needed

**VS Code Configuration Issues**
- Ensure extensions.json lists all required extensions
- Check settings.json for any conflicting configurations
- Restart VS Code after applying templates

**Build or Runtime Errors**
- Verify all configuration files are properly formatted
- Check for missing environment variables
- Ensure all dependencies are installed

### Getting Help

1. **Check Documentation**: Review this guide and README.md
2. **Common Patterns**: Look at similar project configurations
3. **Community**: Open an issue for template improvements
4. **Customization**: Adapt templates for specific needs

## 📈 Best Practices

### For Template Users
- Be specific about technology requirements in your prompt
- Mention any special configuration needs upfront
- Reference the template repository URL clearly

### For Project Development
- Keep configurations up to date with latest best practices
- Document any custom modifications for team members
- Use the configured tooling consistently across the project

### For Template Contributors
- Test templates with real projects before submitting
- Follow existing patterns and conventions
- Document any special setup requirements clearly
