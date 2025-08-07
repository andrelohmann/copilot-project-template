# Default Initialization Prompts

> **Important**: This file contains template prompts for project initialization. During actual project setup, agents should ignore these files and not copy them to the target project.

## Web Application Prompts

### React + TypeScript + Tailwind CSS
```
I want to create a modern React web application with TypeScript and Tailwind CSS. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- React 18 with TypeScript
- Tailwind CSS for styling
- Vite as build tool
- ESLint and Prettier for code formatting
- React Router for navigation
- Basic component structure
- Responsive design
```

### Next.js Full-Stack Application
```
I want to create a full-stack Next.js application with TypeScript. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Next.js 14 with App Router
- TypeScript for type safety
- Tailwind CSS for styling
- API routes for backend
- Database integration (specify: PostgreSQL/MongoDB/etc.)
- Authentication system
- Responsive design
```

### Vue.js Application
```
I want to create a Vue.js application with TypeScript and modern tooling. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Vue 3 with Composition API
- TypeScript
- Vite as build tool
- Vue Router for navigation
- Pinia for state management
- ESLint and Prettier
```

## Backend Service Prompts

### Node.js Express API
```
I want to create a Node.js REST API with Express and TypeScript. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Express.js with TypeScript
- RESTful API design
- Database integration (specify type)
- Authentication middleware
- Input validation
- Error handling
- API documentation
- Testing setup
```

### Python FastAPI Service
```
I want to create a Python web service using FastAPI. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- FastAPI framework
- Type hints throughout
- Pydantic models for validation
- Database integration with SQLAlchemy
- Authentication system
- Automatic API documentation
- Testing with pytest
- Docker support
```

### Python Django Application
```
I want to create a Django web application with modern best practices. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Django 5.x
- PostgreSQL database
- Django REST Framework for API
- User authentication
- Admin interface
- Testing setup
- Docker configuration
```

## Desktop Application Prompts

### Electron Application
```
I want to create a cross-platform desktop application using Electron. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Electron with TypeScript
- React for the UI
- Modern build tooling
- Auto-updater functionality
- Native menu integration
- Window management
- Package for multiple platforms
```

### Tauri Application
```
I want to create a lightweight desktop application using Tauri and React. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Tauri framework
- React frontend with TypeScript
- Rust backend
- Small bundle size
- Native system integration
- Cross-platform compatibility
```

## CLI Tool Prompts

### Node.js CLI Tool
```
I want to create a command-line tool using Node.js and TypeScript. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Node.js with TypeScript
- Commander.js for CLI parsing
- Inquirer.js for interactive prompts
- Chalk for colored output
- Testing with Jest
- NPM package configuration
```

### Python CLI Tool
```
I want to create a Python command-line tool with modern practices. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Python 3.9+
- Click framework for CLI
- Rich for beautiful output
- Type hints throughout
- Testing with pytest
- PyPI package configuration
- Documentation with Sphinx
```

## Data Science Prompts

### Jupyter Data Analysis Project
```
I want to create a data science project with Jupyter notebooks and Python. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Jupyter Lab environment
- pandas, numpy, matplotlib, seaborn
- scikit-learn for machine learning
- Data preprocessing pipelines
- Visualization tools
- Environment management with conda
- Documentation structure
```

### Machine Learning Project
```
I want to create a machine learning project with PyTorch/TensorFlow. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- PyTorch or TensorFlow 2.x
- Model training and evaluation
- Data loading and preprocessing
- Experiment tracking (specify: MLflow/Weights & Biases/etc.)
- Model deployment setup
- Testing and validation
- Documentation
```

## Mobile Application Prompts

### React Native Application
```
I want to create a cross-platform mobile application using React Native. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- React Native with TypeScript
- Navigation system
- State management (Redux/Context)
- Native module integration
- Testing setup
- Build configuration for iOS and Android
```

### Flutter Application
```
I want to create a mobile application using Flutter. Please follow the setup instructions from https://github.com/andrelohmann/copilot-project-template

Requirements:
- Flutter framework
- Dart language
- State management (Bloc/Provider)
- Navigation system
- Platform-specific features
- Testing setup
- Build configuration
```

## Usage Instructions for Agents

When a user provides one of these prompts or similar requests:

1. **Analyze the prompt** to extract project requirements
2. **Reference this template repository** for setup instructions
3. **Follow the instructions.md** file for detailed setup steps
4. **Do NOT copy these prompt files** to the target project
5. **Customize the setup** based on specific user requirements
6. **Ignore template artifacts** during initialization

## Template Placeholders

When copying template files, replace these placeholders:
- `{{PROJECT_NAME}}` - The actual project name
- `{{TECH_STACK}}` - The specific technology stack
- `{{PROJECT_TYPE}}` - Type of project (web app, CLI, etc.)
- `{{ARCHITECTURE_PATTERN}}` - Chosen architecture pattern
- `{{INSTALL_COMMAND}}` - Installation command (npm install, pip install, etc.)
- `{{DEV_COMMAND}}` - Development server command
- `{{TESTING_FRAMEWORK}}` - Testing framework being used
