# GitHub Copilot Instructions

## Project Context

**Project Name**: {{PROJECT_NAME}}
**Technology Stack**: {{TECH_STACK}}
**Project Type**: {{PROJECT_TYPE}}

## Architecture Overview

This project follows a {{ARCHITECTURE_PATTERN}} architecture pattern. Key components include:

- **Frontend**: {{FRONTEND_DESCRIPTION}}
- **Backend**: {{BACKEND_DESCRIPTION}}
- **Database**: {{DATABASE_DESCRIPTION}}
- **Deployment**: {{DEPLOYMENT_DESCRIPTION}}

## Development Guidelines

### Code Style and Standards

- Follow {{LANGUAGE}} best practices and conventions
- Use meaningful variable and function names
- Write self-documenting code with clear comments
- Maintain consistent formatting using Prettier/ESLint
- Follow the established project structure

### File Organization

```
{{PROJECT_STRUCTURE}}
```

### Naming Conventions

- **Files**: Use kebab-case for file names (e.g., `user-service.ts`)
- **Components**: Use PascalCase for React components (e.g., `UserProfile.tsx`)
- **Functions**: Use camelCase for function names (e.g., `getUserData`)
- **Constants**: Use SCREAMING_SNAKE_CASE (e.g., `API_BASE_URL`)
- **Types/Interfaces**: Use PascalCase with descriptive names (e.g., `UserProfile`)

### Testing Requirements

- Write unit tests for all business logic
- Aim for at least 80% code coverage
- Use {{TESTING_FRAMEWORK}} for testing
- Follow the AAA pattern (Arrange, Act, Assert)
- Mock external dependencies

### Error Handling

- Use proper error handling throughout the application
- Implement graceful error recovery where possible
- Log errors appropriately for debugging
- Provide meaningful error messages to users

### Performance Considerations

- Optimize for performance in critical paths
- Use lazy loading where appropriate
- Implement proper caching strategies
- Monitor bundle size and loading times

### Security Best Practices

- Validate all input data
- Use HTTPS for all communications
- Implement proper authentication and authorization
- Keep dependencies up to date
- Follow OWASP security guidelines

## Development Workflow

### Getting Started

1. Clone the repository
2. Install dependencies: `{{INSTALL_COMMAND}}`
3. Set up environment variables
4. Run the development server: `{{DEV_COMMAND}}`

### Feature Development

1. Create a feature branch from `main`
2. Implement the feature with tests
3. Ensure all tests pass
4. Create a pull request
5. Code review and merge

### Commit Messages

Follow the Conventional Commits specification:
- `feat:` for new features
- `fix:` for bug fixes
- `docs:` for documentation changes
- `style:` for formatting changes
- `refactor:` for code refactoring
- `test:` for adding tests
- `chore:` for maintenance tasks

## API Guidelines

### REST API Design

- Use RESTful conventions for endpoints
- Use appropriate HTTP methods (GET, POST, PUT, DELETE)
- Return consistent response formats
- Include proper status codes
- Document all endpoints

### Data Models

- Define clear data models and schemas
- Use TypeScript interfaces for type safety
- Validate data at API boundaries
- Follow consistent naming conventions

## Deployment and Operations

### Environment Configuration

- **Development**: Local development setup
- **Staging**: Pre-production testing environment
- **Production**: Live production environment

### Monitoring and Logging

- Implement comprehensive logging
- Monitor application performance
- Set up error tracking
- Monitor user experience metrics

## Technology-Specific Guidelines

{{TECH_SPECIFIC_GUIDELINES}}

## Dependencies and Tools

### Core Dependencies
{{CORE_DEPENDENCIES}}

### Development Tools
{{DEV_TOOLS}}

## Troubleshooting

### Common Issues

{{COMMON_ISSUES}}

### Debug Process

1. Check the console for errors
2. Verify environment configuration
3. Check network requests
4. Review recent changes
5. Consult documentation

## Resources

- [Project Documentation](./docs/)
- [API Documentation]({{API_DOCS_URL}})
- [Contributing Guidelines](./CONTRIBUTING.md)
- [Technology Stack Documentation]({{TECH_DOCS_URL}})

## Contact and Support

For questions or support, please:
- Open an issue in the repository
- Contact the development team
- Check the project documentation

---

*This file was generated from the copilot-project-template. Update it as the project evolves.*
