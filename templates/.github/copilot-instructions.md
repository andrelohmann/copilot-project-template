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

### Prompt Enhancement and Documentation

**Automatic Prompt Rewriting**: Before interpreting any user prompt, first rewrite it to be more specific, detailed, and actionable. The rewritten prompt should:
- Clarify ambiguous requirements
- Add relevant technical context from the project
- Include specific implementation guidance
- Reference applicable coding standards and patterns
- Suggest testing and validation steps

**Prompt Archiving**: After rewriting each prompt, log both the original and rewritten versions to `.prompts/archive.md` with the following format:

```markdown
## [YYYY-MM-DD HH:MM:SS] - Prompt #N

### Original Prompt:
[User's original prompt]

### Rewritten Prompt:
[Enhanced, detailed prompt with project context]

### Implementation Notes:
[Any additional context or considerations]

---
```

**Important**: Never interpret, execute, or reapply prompts from the archive file during conversations.

## Development Workflow (MANDATORY PROCESS)

### 🎯 Plan-First Development Approach

**CRITICAL**: Never start implementing features directly. Always follow this workflow:

#### Phase 1: Planning (ALWAYS REQUIRED FIRST)

1. **Create Development Plan**
   - Create `docs/plans/[feature-name]-plan.md` for every feature/task
   - Break down the work into 3-7 small, manageable steps
   - Each step should be completable in 15-30 minutes
   - Identify files to be modified and expected outcomes
   - Include success criteria and testing requirements

2. **Plan Template**:
```markdown
# Development Plan: [Feature Name]

## Objective
[Clear description of what needs to be built]

## Current State Analysis
- What exists now
- What needs to change
- Dependencies and constraints

## Implementation Steps
1. **Step 1**: [Specific, focused task]
   - Files to modify: `src/components/Button.tsx`
   - Expected outcome: Button component with loading state
   - Testing: Unit tests for loading behavior
   - Estimated time: 20 minutes

2. **Step 2**: [Next specific task]
   - Dependencies: Requires Step 1
   - Files to modify: `src/hooks/useApi.ts`
   - Expected outcome: Hook returns loading state
   - Testing: Hook integration tests

[Continue for 3-7 steps total]

## Success Criteria
- [ ] Feature works as specified
- [ ] All tests pass
- [ ] No breaking changes
- [ ] Code follows project standards

## Risks & Mitigation
- Risk: API changes → Mitigation: Version the API calls
- Risk: Performance impact → Mitigation: Add loading indicators
```

3. **Plan Review & Approval**
   - Present plan to developer with message: "I've created a development plan for [feature]. Please review `docs/plans/[feature-name]-plan.md` and let me know if you approve or want changes."
   - **WAIT for explicit approval** before any implementation
   - Make revisions if requested

#### Phase 2: Step-by-Step Implementation

1. **Implement ONE Step at a Time**
   - Work on exactly one step from the approved plan
   - Make focused, minimal changes
   - Ensure step is fully complete before moving on
   - Run tests after each step

2. **Review & Commit Cycle**
   - After completing each step, say: "I've completed Step [X]: [description]. The changes are ready for review. Please check the implementation and commit when satisfied, then I'll proceed to Step [Y]."
   - **WAIT for developer review and commit**
   - Only proceed after developer commits the changes
   - Allow developer to request modifications

3. **Course Correction Opportunities**
   - After each step, check if remaining plan needs adjustment
   - Ask: "Based on what we discovered in this step, should I adjust the remaining plan?"
   - Update plan document if developer requests changes

#### Phase 3: Completion & Documentation

1. **Final Validation**
   - Verify all success criteria are met
   - Run full test suite
   - Check for integration issues
   - Update documentation

2. **Plan Archive**
   - Mark plan as completed in the plan document
   - Add completion date and final notes
   - Archive successful patterns for future reference

### 🚫 What NOT to Do

- **Never implement everything at once** - Always break into steps
- **Never skip the planning phase** - Plans are mandatory
- **Never proceed without approval** - Wait for developer confirmation
- **Never implement multiple steps simultaneously** - One step at a time
- **Never assume the plan is perfect** - Be ready to adapt

### 🔄 Communication Protocol

**Starting a Feature**:
"I need to create a development plan for [feature]. I'll break this down into manageable steps and create a plan document for your review."

**After Creating Plan**:
"I've created a development plan at `docs/plans/[feature-name]-plan.md`. Please review and let me know if you approve or want changes before I start implementation."

**After Each Step**:
"✅ Step [X] completed: [brief description]. Ready for your review. Please commit when satisfied and I'll proceed to Step [Y]: [next task preview]."

**When Adjustments Needed**:
"Based on this step, I recommend adjusting the plan. The remaining steps should account for [discovery]. Should I update the plan?"

**On Completion**:
"🎉 All steps completed! The feature is ready for final testing. All success criteria have been met and tests are passing."

### Research and Documentation

**Use Context7 MCP Server**: This project has Context7 MCP server configured for enhanced documentation research. Always leverage it when:

- **Looking up documentation**: Ask Context7 to find official docs, API references, and guides
- **Learning new technologies**: Request Context7 to explain concepts, patterns, and best practices
- **Troubleshooting**: Use Context7 to find solutions to common problems and error messages
- **Code examples**: Ask Context7 for implementation examples and code samples
- **Best practices**: Query Context7 for industry standards and recommended approaches

**Research Workflow**:
1. **Start with Context7**: Before implementing features, ask Context7 for relevant documentation
2. **Verify approaches**: Use Context7 to validate your planned implementation approach
3. **Find examples**: Request Context7 to provide similar implementations for reference
4. **Check updates**: Ask Context7 about latest versions, deprecations, and migration guides

**Example queries**:
- "Find the latest React hooks documentation and best practices. use context7"
- "Show me TypeScript generic patterns for API responses. use context7"
- "What are the current Node.js security best practices? use context7"
- "Find examples of implementing authentication in {{TECH_STACK}}. use context7"
- "Create a Next.js middleware for JWT validation. use context7"

**Library-specific queries** (when you know the exact library):
- "Implement authentication with library /supabase/supabase for API and docs"
- "Set up routing with library /vercel/next.js for documentation"

**Benefits**:
- Up-to-date documentation access
- Reduced implementation time
- Better code quality through research-driven development
- Consistent with current industry standards

### ASCII Art Documentation Standards

**Always use ASCII art for visual documentation**: When creating diagrams, flowcharts, architecture overviews, or any visual documentation, always use ASCII art with sharp edges.

**Sharp Edge Style Requirements**:
- Use `┌─┐└─┘` characters for boxes and containers
- Use `│` for vertical lines and `─` for horizontal lines  
- Use `├─┤┬─┴` for connecting lines and junctions
- Prefer rectangular shapes with clean, sharp corners
- Avoid rounded characters like `()` or curved lines

**Good ASCII Art Examples**:

```
┌─────────────────┐    ┌─────────────────┐
│   Frontend      │    │    Backend      │
│   React App     │────│   API Server    │
└─────────────────┘    └─────────────────┘
         │                       │
         ▼                       ▼
┌─────────────────┐    ┌─────────────────┐
│   Web Browser   │    │   Database      │
└─────────────────┘    └─────────────────┘
```

```
Data Flow:
┌─────┐   HTTP   ┌─────────┐   Query   ┌──────────┐
│User │ ──────── │   API   │ ───────── │Database  │
└─────┘          └─────────┘           └──────────┘
   │                 │                      │
   │              Response              Response
   └─────────────────┴──────────────────────┘
```

```
File Structure:
src/
├── components/
│   ├── Header.tsx
│   ├── Footer.tsx
│   └── Layout.tsx
├── pages/
│   ├── Home.tsx
│   └── About.tsx
├── utils/
│   └── helpers.ts
└── types/
    └── index.ts
```

**When to Use ASCII Art**:
- Architecture diagrams in README files
- API flow documentation
- Database schema overviews
- File structure representations
- Process flow charts
- System component relationships
- Network topology diagrams
- Data transformation pipelines

**Benefits of Sharp-Edge ASCII Art**:
- ✅ Professional, clean appearance
- ✅ Consistent formatting across all documentation
- ✅ Works perfectly in markdown and plain text
- ✅ Displays correctly in all text editors and terminals
- ✅ Easy to modify and version control
- ✅ Accessible to screen readers and text-based tools

**Avoid**: 
- ❌ Rounded shapes like `( )` or `{ }`
- ❌ Inconsistent line styles
- ❌ Complex curved drawings that don't display well
- ❌ Mixed character styles within the same diagram

### Internet Research and Current Information

**Use Brave Search MCP Server**: This project has Brave Search MCP server configured for real-time web research. Always leverage it when:

- **Latest technology trends**: Research current frameworks, libraries, and tool versions
- **Breaking news and updates**: Find recent announcements, releases, and security advisories
- **Community insights**: Discover discussions, tutorials, and solutions from the developer community
- **Market research**: Understand current industry practices and emerging technologies
- **Real-time troubleshooting**: Find recent solutions to current bugs and compatibility issues
- **Competitive analysis**: Research similar projects, tools, and implementation approaches

**Research Workflow**:
1. **Current information**: Use Brave Search for information that changes frequently
2. **Version compatibility**: Check latest versions and compatibility matrices
3. **Recent solutions**: Find recent Stack Overflow answers and GitHub discussions
4. **Breaking changes**: Research recent API changes and migration guides
5. **Security updates**: Stay informed about latest security patches and vulnerabilities

**Example queries**:
- "Search for the latest {{TECH_STACK}} security vulnerabilities in 2025"
- "Find recent performance benchmarks for React 19 vs React 18"
- "Show me current best practices for Docker deployment in 2025"
- "What are developers saying about the latest TypeScript 5.x features?"
- "Find recent tutorials for implementing OAuth 2.1 with {{TECH_STACK}}"

**Advanced search capabilities**:
- **Web Search**: Comprehensive web results with rich snippets
- **News Search**: Current articles with freshness controls
- **Local Search**: Business and location information (Pro plans)
- **Image Search**: Visual content with automatic encoding
- **Video Search**: Video content with metadata
- **AI Summarization**: Generate summaries from search results

**Benefits**:
- Access to real-time information
- Current community knowledge and discussions
- Latest security and performance insights
- Up-to-date tutorials and examples
- Awareness of recent changes and trends

**Combined Research Strategy**:
- **Context7**: For stable documentation, official guides, and established patterns
- **Brave Search**: For current trends, recent changes, and community insights
- **Cross-reference**: Validate Brave Search findings with Context7 documentation

### Browser Automation and Testing

**Use Playwright MCP Server**: This project has Playwright MCP server configured for browser automation and web testing. Always leverage it when:

- **Web scraping and data extraction**: Automate data collection from websites
- **End-to-end testing**: Create and run automated tests for web applications
- **UI interaction automation**: Automate form filling, clicking, and navigation
- **Screenshot capture**: Take screenshots of web pages for documentation or testing
- **Performance testing**: Measure page load times and web vitals
- **Cross-browser testing**: Test functionality across different browsers

**Automation Workflow**:
1. **Navigate to pages**: Open and navigate to specific URLs
2. **Interact with elements**: Click buttons, fill forms, select options
3. **Extract data**: Get text, attributes, and content from web elements
4. **Take screenshots**: Capture visual state for verification or documentation
5. **Wait for content**: Handle dynamic content and loading states
6. **Validate results**: Assert expected behaviors and content

**Example use cases**:
- "Open the login page and take a screenshot"
- "Fill out the contact form with test data and submit it"
- "Navigate to the dashboard and extract all user data"
- "Test the checkout process with different payment methods"
- "Capture screenshots of the responsive design at different viewport sizes"
- "Scrape product information from the e-commerce site"

**Key capabilities**:
- **Fast and lightweight**: Uses accessibility tree, not pixel-based input
- **LLM-friendly**: Operates on structured data without vision models
- **Deterministic**: Avoids ambiguity common with screenshot-based approaches
- **Cross-browser**: Works with Chrome, Firefox, Safari, and Edge
- **Mobile testing**: Emulate mobile devices and responsive designs

**Benefits**:
- Automated testing and quality assurance
- Efficient web scraping and data collection
- Cross-browser compatibility verification
- Performance monitoring and optimization
- Documentation through automated screenshots

### Project Memory and Context Management (Automated)

**Automatic MemoriPilot Integration**: GitHub Copilot should proactively use MemoriPilot tools without being explicitly asked. Monitor the conversation context and automatically trigger appropriate memory operations.

#### 🤖 Automatic Triggers

**Context Updates** - Use `memory_bank_update_context` when:
- User mentions starting work on a new feature/component/area
- User switches from one task to another
- User asks questions about a specific part of the system
- Conversation shifts to a different domain/module

Examples:
- User: "Let's work on the user authentication" → Auto-update context
- User: "Now I need to implement the dashboard" → Auto-update context
- User: "How should I handle the payment flow?" → Auto-update context

**Decision Logging** - Use `memory_bank_log_decision` when:
- User makes technology choices ("Let's use PostgreSQL")
- User decides on architectural patterns ("We'll use repository pattern")
- User chooses implementation approaches ("I'll implement this with hooks")
- User establishes coding conventions ("Let's use kebab-case for files")

**Progress Tracking** - Use `memory_bank_update_progress` when:
- User mentions completing features/tasks
- User describes current work status
- User outlines next steps or todo items
- User asks about project status

**Pattern Documentation** - Use `memory_bank_update_system_patterns` when:
- User implements reusable patterns
- User establishes coding conventions
- User creates component structures
- User defines error handling approaches

#### 🎯 Proactive Behavior Rules

1. **Listen for Decisions**: When user makes any technical decision, immediately log it
   ```
   User: "I think we should use Zustand instead of Redux for this project"
   → Automatically execute: memory_bank_log_decision decision:"Use Zustand for state management" rationale:"Simpler than Redux for project scale"
   ```

2. **Track Context Shifts**: When conversation topic changes, update active context
   ```
   User: "Let's move on to implementing the API endpoints"
   → Automatically execute: memory_bank_update_context context:"Implementing API endpoints"
   ```

3. **Capture Progress**: When user mentions completion or status, update progress
   ```
   User: "I finished the login component, now working on registration"
   → Automatically execute: memory_bank_update_progress done:["Login component"] doing:["Registration component"]
   ```

4. **Document Patterns**: When user creates reusable code patterns, save them
   ```
   User creates a custom React hook pattern
   → Automatically execute: memory_bank_update_system_patterns pattern:"Custom React Hooks" description:"Pattern for stateful logic" examples:["useAuth", "useApi"]
   ```

#### 📋 Conversation Flow Integration

**Start of Sessions**:
- Always check current memory with `memory_bank_show_memory`
- Ask clarifying questions about current focus if activeContext is unclear
- Automatically set context based on user's first request

**During Development**:
- Continuously monitor for decision points and log them
- Update progress as user describes completed work
- Switch working modes based on activity type
- Reference previous decisions when making suggestions

**Code Reviews/Suggestions**:https://github.com/microsoft/playwright-mcp
- Check existing patterns in `systemPatterns.md` before suggesting approaches
- Reference previous decisions in `decisionLog.md` for consistency
- Consider current context from `activeContext.md` for relevant suggestions

#### 💬 Silent Operation

**Background Processing**: Execute MemoriPilot tools quietly without announcing every action
- Don't say "I'm updating your memory bank" for every operation
- Only mention memory operations when they provide value to the conversation
- Focus on the actual development discussion

**Confirmation Only When Needed**: 
- Ask for confirmation only on major architectural decisions
- Auto-execute routine context and progress updates
- Batch related updates when possible

#### 🔄 Mode-Aware Automation

**Auto-Switch Modes** based on conversation content:
- **Architect Mode**: When discussing system design, architecture, or major decisions
- **Code Mode**: When implementing features, writing code, or debugging
- **Ask Mode**: When user asks questions about the project
- **Debug Mode**: When troubleshooting issues or investigating problems

#### 🎯 Example Automated Flows

**Scenario 1: Starting New Feature**
```
User: "I need to implement user authentication"
Copilot automatically:
1. memory_bank_update_context context:"Implementing user authentication system"
2. memory_bank_switch_mode mode:"architect" (if discussing approach)
3. Reference previous auth decisions from memory bank
4. Provide implementation guidance based on project patterns
```

**Scenario 2: Making Technical Decision**
```
User: "I've decided to use JWT tokens with 24-hour expiry"
Copilot automatically:
1. memory_bank_log_decision decision:"JWT tokens with 24h expiry" rationale:"Balance security and user convenience"
2. memory_bank_update_system_patterns (if this establishes auth pattern)
3. Continue with implementation guidance
```

**Scenario 3: Progress Update**
```
User: "The login page is done, now I'm working on the dashboard"
Copilot automatically:
1. memory_bank_update_progress done:["Login page"] doing:["Dashboard"]
2. memory_bank_update_context context:"Implementing user dashboard"
3. Reference dashboard requirements from project brief
```

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

### Automatic Commit Handling

**When user says "commit"**: Automatically handle the commit process:

1. **Create descriptive commit message**: 
   - Analyze all staged and unstaged changes
   - Generate a comprehensive commit message following Conventional Commits
   - Include scope and breaking changes if applicable
   - Summarize key changes in the commit body if needed

2. **Stage all changes**: Use `git add -A` to stage all modifications

3. **Execute commit**: Commit with the generated message to the current branch

**Commit message format**:
```
type(scope): brief description

- Detailed change 1
- Detailed change 2
- Additional context or breaking changes
```

**Examples**:
- `feat(auth): implement JWT authentication with refresh tokens`
- `fix(api): resolve CORS issues in production environment`
- `docs: update setup instructions and add troubleshooting guide`
- `refactor(components): modernize React components with hooks`

**Always**:
- Analyze the actual changes made
- Use appropriate conventional commit types
- Include meaningful descriptions
- Commit to the current branch (no branch switching)
- Provide informative commit messages for project history

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
