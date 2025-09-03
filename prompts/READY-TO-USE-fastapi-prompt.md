# 🚀 FastAPI REST API - Project Bootstrap Prompt

Copy and paste this prompt to GitHub Copilot to create a complete FastAPI REST API project:

---

## Project Initialization Request

```text
Please create a new FastAPI REST API project using the template from:
https://github.com/andrelohmann/copilot-project-template

PROJECT REQUIREMENTS:
✅ Technology Stack: FastAPI + Python 3.11 + SQLAlchemy + PostgreSQL + Redis
✅ Architecture: Clean Architecture with Repository Pattern
✅ Authentication: JWT with role-based access control
✅ Database: PostgreSQL with async SQLAlchemy and Alembic migrations
✅ Caching: Redis for performance and session management
✅ Project Name: "fastapi-rest-api"

CORE FEATURES TO IMPLEMENT:
1. JWT authentication and authorization system
2. User management with CRUD operations
3. Database integration with SQLAlchemy 2.0+ (async)
4. Redis caching and session management
5. API versioning and comprehensive documentation
6. Rate limiting and security middleware
7. Comprehensive test suite with pytest
8. Production-ready containerization

REQUIRED DEPENDENCIES:
- fastapi, uvicorn[standard] (Web framework and server)
- sqlalchemy[asyncio], asyncpg, alembic (Database ORM and migrations)
- python-jose[cryptography], passlib[bcrypt] (Authentication and security)
- redis, aioredis (Caching and session storage)
- pydantic[email], pydantic-settings (Data validation and configuration)
- pytest, pytest-asyncio, httpx (Testing framework)
- black, isort, flake8, mypy (Code quality tools)

PROJECT STRUCTURE:
/app/api/v1/ - API endpoints (auth, users, items)
/app/core/ - Core configuration (database, security, cache)
/app/models/ - SQLAlchemy database models
/app/schemas/ - Pydantic request/response schemas
/app/services/ - Business logic layer
/app/repositories/ - Data access layer
/tests/ - Comprehensive test suite
/alembic/ - Database migration files

API ENDPOINTS TO CREATE:
Authentication:
- POST /api/v1/auth/login (User login with JWT)
- POST /api/v1/auth/register (User registration)
- POST /api/v1/auth/refresh (Token refresh)
- POST /api/v1/auth/logout (User logout)

User Management:
- GET /api/v1/users/me (Current user profile)
- PUT /api/v1/users/me (Update profile)
- GET /api/v1/users/ (List users - admin only)
- GET /api/v1/users/{user_id} (Get user by ID - admin only)

Example CRUD Resource (Items):
- GET /api/v1/items/ (List items with pagination)
- POST /api/v1/items/ (Create new item)
- GET /api/v1/items/{item_id} (Get item by ID)
- PUT /api/v1/items/{item_id} (Update item)
- DELETE /api/v1/items/{item_id} (Delete item)

System Endpoints:
- GET /health (Health check with database status)
- GET /metrics (Prometheus metrics)
- GET /docs (Interactive API documentation)

DEVELOPMENT ENVIRONMENT:
- Devcontainer with Python 3.11, PostgreSQL, Redis
- VS Code MCP servers for enhanced development experience
- Hot reload with uvicorn during development
- Docker Compose for local database and cache services
- Environment-based configuration management

ARCHITECTURE FEATURES:
- Clean Architecture with dependency injection
- Repository pattern for data access abstraction
- Service layer for business logic separation
- Async/await throughout the application
- Proper error handling and logging
- Request/response validation with Pydantic
- Database connection pooling and optimization

SECURITY FEATURES:
- JWT authentication with refresh tokens
- Password hashing with bcrypt
- Role-based access control (user/admin roles)
- Rate limiting to prevent abuse
- CORS configuration for web clients
- Input validation and SQL injection prevention

TESTING STRATEGY:
- Unit tests for services and repositories
- Integration tests for API endpoints
- Test database with fixtures and cleanup
- Mock external dependencies (Redis, etc.)
- Code coverage reporting
- Automated testing in CI/CD pipeline

DEPLOYMENT CONFIGURATION:
- Production Dockerfile with multi-stage build
- Docker Compose for development services
- Environment variables for configuration
- Database migration support with Alembic
- Health checks for container orchestration
- Logging configuration for production monitoring

Please bootstrap this project now using the copilot-project-template and implement all the core features listed above.
```

---

## What This Prompt Will Create

### 🏗️ Project Architecture
```
fastapi-rest-api/
├── 🐳 .devcontainer/          # Python + PostgreSQL + Redis container
├── ⚙️  .vscode/               # MCP servers + Python extensions
├── 🤖 .github/               # Copilot instructions for API development
├── 📦 app/                   # Main application package
│   ├── api/v1/              # Versioned API endpoints
│   ├── core/                # Configuration and setup
│   ├── models/              # Database models
│   ├── schemas/             # Pydantic validation schemas
│   ├── services/            # Business logic layer
│   ├── repositories/        # Data access layer
│   └── utils/               # Utility functions
├── 🧪 tests/                 # Comprehensive test suite
├── 🗄️  alembic/              # Database migrations
├── 🐳 docker-compose.yml     # Development services
└── ⚙️  Configuration files    # Requirements, Docker, etc.
```

### 🔧 Key Technologies

1. **🚀 FastAPI Framework**
   - Modern Python web framework
   - Automatic API documentation
   - Built-in data validation
   - Async/await support

2. **🗄️ Database Stack**
   - PostgreSQL for data persistence
   - SQLAlchemy 2.0+ with async support
   - Alembic for database migrations
   - Connection pooling and optimization

3. **🔐 Security Features**
   - JWT authentication system
   - Role-based access control
   - Password hashing with bcrypt
   - Rate limiting and CORS protection

4. **⚡ Performance & Caching**
   - Redis for caching and sessions
   - Async operations throughout
   - Database query optimization
   - Connection pooling

5. **🧪 Testing & Quality**
   - Pytest with async support
   - Test database with fixtures
   - Code coverage reporting
   - Automated quality checks

### 📡 API Capabilities

- **🔑 Authentication**: Complete JWT auth flow with refresh tokens
- **👥 User Management**: Registration, profile management, admin functions
- **📋 CRUD Operations**: Full create, read, update, delete functionality
- **📚 API Documentation**: Interactive Swagger UI and ReDoc
- **🔍 Health Monitoring**: Health checks and metrics endpoints
- **🛡️ Security**: Rate limiting, input validation, role-based access

### 🚀 Development Experience

- **📦 One-Click Setup**: Devcontainer with all dependencies pre-installed
- **🔄 Hot Reload**: Instant code changes during development
- **🤖 AI-Enhanced**: GitHub Copilot optimized with MCP servers
- **🧪 Testing**: Comprehensive test suite with database fixtures
- **📊 Monitoring**: Built-in logging and metrics collection

### 🐳 Deployment Ready

- **🐳 Containerized**: Production Dockerfile and development compose
- **⚙️ Configurable**: Environment-based configuration
- **📊 Observable**: Health checks and metrics endpoints
- **🔄 Scalable**: Async architecture with connection pooling

This prompt creates a complete, production-ready FastAPI REST API with authentication, database integration, caching, testing, and deployment configuration all set up and ready to use!
