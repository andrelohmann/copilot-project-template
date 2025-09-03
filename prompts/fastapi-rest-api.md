# FastAPI REST API Application

**Project Type**: REST API Backend Service  
**Technology Stack**: FastAPI, Python 3.11+, SQLAlchemy, PostgreSQL, Redis, Docker  
**Architecture**: Clean Architecture with Repository Pattern  
**Features**: Authentication, Database ORM, Caching, API Documentation, Testing

## Project Initialization Prompt

```
I need you to create a new FastAPI REST API project using the copilot-project-template. This project should:

TECHNOLOGY REQUIREMENTS:
- Use FastAPI with Python 3.11+ and async/await
- Use SQLAlchemy 2.0+ with PostgreSQL database
- Implement JWT authentication and authorization
- Include Redis for caching and session management
- Use Pydantic v2 for data validation and serialization
- Follow Clean Architecture principles with dependency injection

PROJECT STRUCTURE:
Create a scalable REST API with proper separation of concerns, comprehensive error handling, and production-ready features.

API FEATURES:
- User authentication and authorization (JWT)
- CRUD operations with database persistence
- Input validation and error handling
- API versioning and documentation (OpenAPI/Swagger)
- Rate limiting and request throttling
- Health checks and monitoring endpoints
- Comprehensive logging and error tracking

DATABASE & CACHING:
- PostgreSQL with SQLAlchemy ORM and Alembic migrations
- Redis for caching, session storage, and rate limiting
- Database connection pooling and optimization
- Proper transaction handling and rollback support

DEVELOPMENT WORKFLOW:
- Hot reload during development with uvicorn
- Comprehensive test suite with pytest and test database
- Code quality tools (black, isort, flake8, mypy)
- Docker containerization for development and deployment
- Environment-based configuration management

Please bootstrap this project using: https://github.com/andrelohmann/copilot-project-template

Name the project folder: "fastapi-rest-api"
```

## Expected Project Structure

After initialization, the project should have:

```
fastapi-rest-api/
├── .devcontainer/              # Development container with Python, PostgreSQL, Redis
├── .vscode/                   # VS Code config with MCP servers
├── .github/                   # Copilot instructions for API development
├── app/                       # Main application package
│   ├── api/                   # API route handlers
│   │   ├── v1/               # API version 1 endpoints
│   │   │   ├── auth.py       # Authentication endpoints
│   │   │   ├── users.py      # User management endpoints
│   │   │   └── items.py      # Example CRUD endpoints
│   │   └── dependencies.py   # Route dependencies
│   ├── core/                  # Core application logic
│   │   ├── config.py         # Application configuration
│   │   ├── security.py       # JWT and password handling
│   │   ├── database.py       # Database connection setup
│   │   └── cache.py          # Redis cache configuration
│   ├── models/                # SQLAlchemy database models
│   │   ├── user.py           # User model
│   │   ├── item.py           # Example item model
│   │   └── base.py           # Base model class
│   ├── schemas/               # Pydantic schemas for validation
│   │   ├── user.py           # User request/response schemas
│   │   ├── item.py           # Item schemas
│   │   └── auth.py           # Authentication schemas
│   ├── services/              # Business logic layer
│   │   ├── user_service.py   # User business logic
│   │   ├── auth_service.py   # Authentication logic
│   │   └── item_service.py   # Item business logic
│   ├── repositories/          # Data access layer
│   │   ├── user_repository.py # User data operations
│   │   └── item_repository.py # Item data operations
│   ├── utils/                 # Utility functions
│   │   ├── logger.py         # Logging configuration
│   │   ├── exceptions.py     # Custom exception classes
│   │   └── validators.py     # Custom validation functions
│   └── main.py               # FastAPI application entry point
├── tests/                     # Test suite
│   ├── api/                  # API endpoint tests
│   ├── services/             # Service layer tests
│   ├── repositories/         # Repository tests
│   ├── conftest.py          # Pytest configuration
│   └── test_main.py         # Main application tests
├── alembic/                   # Database migration files
│   ├── versions/             # Migration scripts
│   └── env.py               # Alembic configuration
├── docker-compose.yml         # Development services (PostgreSQL, Redis)
├── Dockerfile                 # Production container image
├── requirements.txt           # Production dependencies
├── requirements-dev.txt       # Development dependencies
├── pyproject.toml            # Project configuration and tool settings
└── .env.example              # Environment variables template
```

## Technology Dependencies

The project should include these key dependencies:

**Core Framework:**
- `fastapi` - Modern, fast web framework for building APIs
- `uvicorn[standard]` - ASGI server for FastAPI
- `python-multipart` - Form data parsing support

**Database & ORM:**
- `sqlalchemy[asyncio]` - SQL toolkit and ORM with async support
- `asyncpg` - PostgreSQL database adapter for asyncio
- `alembic` - Database migration tool
- `psycopg2-binary` - PostgreSQL adapter (backup)

**Authentication & Security:**
- `python-jose[cryptography]` - JWT token handling
- `passlib[bcrypt]` - Password hashing
- `python-multipart` - OAuth2 password flow support

**Caching & Storage:**
- `redis` - Redis client for caching and sessions
- `aioredis` - Async Redis client

**Data Validation:**
- `pydantic[email]` - Data validation with email support
- `pydantic-settings` - Settings management

**Development Tools:**
- `pytest` - Testing framework
- `pytest-asyncio` - Async test support
- `httpx` - HTTP client for testing APIs
- `black` - Code formatting
- `isort` - Import sorting
- `flake8` - Code linting
- `mypy` - Type checking

**Monitoring & Logging:**
- `structlog` - Structured logging
- `prometheus-fastapi-instrumentator` - Metrics collection

## Key Features to Implement

### 1. Authentication & Authorization
- JWT token-based authentication
- Password hashing with bcrypt
- Role-based access control (RBAC)
- OAuth2 password flow implementation
- Token refresh and revocation

### 2. Database Integration
- SQLAlchemy 2.0+ with async support
- PostgreSQL with connection pooling
- Alembic database migrations
- Repository pattern for data access
- Proper transaction management

### 3. API Design & Documentation
- RESTful API design principles
- OpenAPI/Swagger automatic documentation
- API versioning (v1, v2, etc.)
- Request/response validation with Pydantic
- Comprehensive error handling

### 4. Caching & Performance
- Redis for application caching
- Database query optimization
- Response caching for read-heavy endpoints
- Connection pooling and async operations
- Rate limiting and throttling

### 5. Testing & Quality Assurance
- Unit tests for all business logic
- Integration tests for API endpoints
- Test database with fixtures
- Code coverage reporting
- Automated code quality checks

### 6. Production Readiness
- Docker containerization
- Environment-based configuration
- Health check endpoints
- Logging and monitoring integration
- Security best practices

## API Endpoints Structure

The API should implement these core endpoints:

```ascii
Authentication Endpoints:
POST /api/v1/auth/login          # User login
POST /api/v1/auth/register       # User registration
POST /api/v1/auth/refresh        # Token refresh
POST /api/v1/auth/logout         # User logout

User Management:
GET  /api/v1/users/me           # Get current user
PUT  /api/v1/users/me           # Update current user
GET  /api/v1/users/{user_id}    # Get user by ID (admin)
GET  /api/v1/users/             # List users (admin)

Example CRUD Resource:
GET    /api/v1/items/           # List items
POST   /api/v1/items/           # Create item
GET    /api/v1/items/{item_id}  # Get item by ID
PUT    /api/v1/items/{item_id}  # Update item
DELETE /api/v1/items/{item_id}  # Delete item

System Endpoints:
GET /health                     # Health check
GET /metrics                    # Prometheus metrics
GET /docs                       # API documentation
```

## Development Workflow

```ascii
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Code Changes    │────│ Hot Reload      │────│ API Testing     │
│ (Python/SQL)    │    │ (uvicorn)       │    │ (Swagger UI)    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Database Migrations │    │ Cache Updates   │    │ Test Execution  │
│ (Alembic)       │    │ (Redis)         │    │ (pytest)        │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## Build and Deployment

The project should support:
- `uvicorn app.main:app --reload` - Development server with hot reload
- `pytest` - Run test suite with coverage
- `alembic upgrade head` - Apply database migrations
- `docker-compose up` - Start development services
- `docker build` - Build production container

## Expected Deliverables

After project initialization and setup:

1. **Functional REST API** with FastAPI and async support
2. **Authentication System** with JWT and role-based access
3. **Database Integration** with PostgreSQL and SQLAlchemy
4. **Caching Layer** with Redis for performance optimization
5. **Comprehensive Testing** with pytest and test coverage
6. **API Documentation** with interactive Swagger UI
7. **Production Ready** containerization and deployment configuration
8. **Development Environment** with hot reload and debugging support

This project template provides a complete foundation for building scalable, production-ready REST APIs with modern Python technologies and best practices.
