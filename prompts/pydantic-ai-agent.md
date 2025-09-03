# Pydantic AI Agent Application

**Project Type**: AI Agent Development Platform  
**Technology Stack**: Pydantic AI, Python 3.11+, FastAPI, Vector Database, LLM Integration  
**Architecture**: Agent-based with Tool System and Memory Management  
**Features**: Multi-Modal AI, Tool Integration, Conversation Management, RAG Pipeline

## Project Initialization Prompt

```
I need you to create a new Pydantic AI Agent project using the copilot-project-template. This project should:

TECHNOLOGY REQUIREMENTS:
- Use Pydantic AI framework for agent development
- Support multiple LLM providers (OpenAI, Anthropic, Ollama, etc.)
- Implement tool system for agent capabilities
- Include vector database for RAG and memory
- Use FastAPI for agent API endpoints
- Support multi-modal interactions (text, images, files)

PROJECT STRUCTURE:
Create an intelligent agent system with conversation management, tool integration, and extensible architecture for custom agent behaviors.

AGENT FEATURES:
- Conversation state management and memory
- Dynamic tool registration and execution
- RAG (Retrieval Augmented Generation) pipeline
- Multi-turn conversation handling
- Agent personality and behavior configuration
- Function calling and structured outputs
- Error handling and fallback mechanisms

LLM & AI INTEGRATION:
- Multiple LLM provider support with fallback
- Embedding models for vector search
- Image processing and vision capabilities
- Document processing and chunking
- Semantic search and similarity matching
- Token usage tracking and cost management

TOOL SYSTEM:
- Built-in tools (web search, calculations, file operations)
- Custom tool development framework
- Tool parameter validation with Pydantic
- Async tool execution support
- Tool result caching and optimization
- Tool access control and permissions

DEVELOPMENT WORKFLOW:
- Interactive agent testing and debugging
- Conversation replay and analysis
- Agent performance monitoring
- Tool usage analytics
- Model comparison and A/B testing
- Comprehensive logging and observability

Please bootstrap this project using: https://github.com/andrelohmann/copilot-project-template

Name the project folder: "pydantic-ai-agent"
```

## Expected Project Structure

After initialization, the project should have:

```
pydantic-ai-agent/
├── .devcontainer/              # Development container with Python, vector DB
├── .vscode/                   # VS Code config with MCP servers
├── .github/                   # Copilot instructions for AI agent development
├── app/                       # Main application package
│   ├── agents/                # AI agent implementations
│   │   ├── base_agent.py     # Base agent class
│   │   ├── chat_agent.py     # Conversational agent
│   │   ├── rag_agent.py      # RAG-enabled agent
│   │   └── specialist_agent.py # Domain-specific agents
│   ├── tools/                 # Agent tool system
│   │   ├── builtin/          # Built-in tools
│   │   │   ├── web_search.py # Web search tool
│   │   │   ├── calculator.py # Math calculations
│   │   │   ├── file_ops.py   # File operations
│   │   │   └── code_exec.py  # Code execution
│   │   ├── custom/           # Custom tool implementations
│   │   ├── registry.py       # Tool registration system
│   │   └── base_tool.py      # Base tool interface
│   ├── models/               # LLM and embedding models
│   │   ├── providers/        # LLM provider integrations
│   │   │   ├── openai.py     # OpenAI integration
│   │   │   ├── anthropic.py  # Anthropic Claude
│   │   │   ├── ollama.py     # Local Ollama models
│   │   │   └── azure.py      # Azure OpenAI
│   │   ├── embeddings.py     # Embedding model management
│   │   └── model_router.py   # Model selection and routing
│   ├── memory/               # Agent memory and storage
│   │   ├── conversation.py   # Conversation state management
│   │   ├── vector_store.py   # Vector database operations
│   │   ├── knowledge_base.py # Knowledge management
│   │   └── cache.py          # Response caching
│   ├── rag/                  # Retrieval Augmented Generation
│   │   ├── pipeline.py       # RAG processing pipeline
│   │   ├── chunking.py       # Document chunking strategies
│   │   ├── retrieval.py      # Vector similarity search
│   │   └── reranking.py      # Result reranking
│   ├── api/                  # FastAPI endpoints
│   │   ├── v1/               # API version 1
│   │   │   ├── chat.py       # Chat endpoints
│   │   │   ├── agents.py     # Agent management
│   │   │   ├── tools.py      # Tool management
│   │   │   └── knowledge.py  # Knowledge base management
│   │   └── websocket.py      # Real-time chat via WebSocket
│   ├── core/                 # Core configuration
│   │   ├── config.py         # Application settings
│   │   ├── security.py       # API key management
│   │   ├── database.py       # Database connections
│   │   └── logging.py        # Structured logging
│   ├── schemas/              # Pydantic schemas
│   │   ├── agent.py          # Agent configuration schemas
│   │   ├── conversation.py   # Conversation schemas
│   │   ├── tool.py           # Tool schemas
│   │   └── rag.py            # RAG pipeline schemas
│   ├── utils/                # Utility functions
│   │   ├── text_processing.py # Text utilities
│   │   ├── file_handling.py  # File processing
│   │   ├── monitoring.py     # Performance monitoring
│   │   └── validators.py     # Custom validators
│   └── main.py               # FastAPI application entry point
├── tests/                    # Test suite
│   ├── agents/               # Agent tests
│   ├── tools/                # Tool tests
│   ├── rag/                  # RAG pipeline tests
│   ├── api/                  # API endpoint tests
│   ├── fixtures/             # Test data and fixtures
│   ├── conftest.py          # Pytest configuration
│   └── test_main.py         # Main application tests
├── data/                     # Data storage
│   ├── knowledge/            # Knowledge base documents
│   ├── embeddings/           # Cached embeddings
│   └── conversations/        # Conversation logs
├── notebooks/                # Jupyter notebooks for experimentation
│   ├── agent_testing.ipynb  # Interactive agent testing
│   ├── rag_evaluation.ipynb # RAG performance analysis
│   └── model_comparison.ipynb # LLM model comparison
├── docker-compose.yml        # Development services (Vector DB, Redis)
├── Dockerfile                # Production container
├── requirements.txt          # Production dependencies
├── requirements-dev.txt      # Development dependencies
├── pyproject.toml           # Project configuration
└── .env.example             # Environment variables template
```

## Technology Dependencies

The project should include these key dependencies:

**AI & LLM Framework:**
- `pydantic-ai` - Modern AI agent framework
- `openai` - OpenAI API client
- `anthropic` - Anthropic Claude API
- `ollama` - Local LLM integration
- `tiktoken` - Token counting and management

**Vector Database & Embeddings:**
- `chromadb` - Vector database for embeddings
- `sentence-transformers` - Embedding models
- `faiss-cpu` - Facebook AI Similarity Search
- `numpy` - Numerical computing
- `scipy` - Scientific computing

**Web Framework & API:**
- `fastapi` - Modern web framework
- `uvicorn[standard]` - ASGI server
- `websockets` - Real-time communication
- `httpx` - HTTP client for external APIs

**Document Processing:**
- `langchain-text-splitters` - Document chunking
- `pypdf` - PDF document processing
- `python-docx` - Word document processing
- `markdown` - Markdown processing
- `beautifulsoup4` - HTML parsing

**Data & Storage:**
- `sqlalchemy[asyncio]` - Database ORM
- `redis` - Caching and session storage
- `pydantic-settings` - Configuration management
- `python-multipart` - File upload support

**Development Tools:**
- `pytest` - Testing framework
- `pytest-asyncio` - Async test support
- `jupyter` - Interactive development
- `black` - Code formatting
- `isort` - Import sorting
- `mypy` - Type checking

**Monitoring & Observability:**
- `structlog` - Structured logging
- `prometheus-client` - Metrics collection
- `rich` - Beautiful terminal output
- `tenacity` - Retry mechanisms

## Key Features to Implement

### 1. AI Agent System
- Pydantic AI agent implementation with conversation state
- Multi-provider LLM support with automatic fallback
- Agent personality and behavior configuration
- Function calling and structured output generation
- Error handling and recovery mechanisms

### 2. Tool Integration Framework
- Dynamic tool registration and discovery
- Built-in tools (web search, calculations, file operations)
- Custom tool development with Pydantic validation
- Async tool execution with timeout handling
- Tool result caching and optimization

### 3. RAG Pipeline
- Document ingestion and preprocessing
- Advanced chunking strategies (semantic, fixed, overlap)
- Vector embedding and similarity search
- Context retrieval and reranking
- Knowledge base management and updates

### 4. Memory & Conversation Management
- Persistent conversation state across sessions
- Short-term and long-term memory systems
- Conversation summarization and compression
- Context window management and optimization
- Multi-turn conversation handling

### 5. Multi-Modal Capabilities
- Text processing and understanding
- Image analysis and description
- Document parsing and extraction
- File upload and processing
- Structured data interpretation

### 6. API & Integration
- RESTful API for agent interactions
- WebSocket support for real-time chat
- Webhook integration for external systems
- Authentication and rate limiting
- Comprehensive API documentation

## Agent Architecture

```ascii
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   User Input    │────│  Agent Router   │────│   LLM Provider  │
│ (Text/Files)    │    │   & Memory      │    │ (OpenAI/Claude) │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Tool Execution  │    │ Vector Search   │    │ Response Gen.   │
│ & Integration   │    │ & RAG Pipeline  │    │ & Validation    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## Development Workflow

```ascii
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Agent Design    │────│ Tool Development│────│ RAG Testing     │
│ & Configuration │    │ & Integration   │    │ & Optimization  │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Interactive     │    │ Performance     │    │ Deployment      │
│ Testing (Jupyter)│    │ Monitoring      │    │ & Scaling       │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## Build and Deployment

The project should support:
- `uvicorn app.main:app --reload` - Development server with hot reload
- `pytest` - Run comprehensive test suite
- `jupyter lab` - Interactive agent development and testing
- `docker-compose up` - Start development services (vector DB, Redis)
- `docker build` - Build production container

## Expected Deliverables

After project initialization and setup:

1. **Functional AI Agent** with Pydantic AI framework
2. **Multi-Provider LLM Support** with OpenAI, Anthropic, and local models
3. **Comprehensive Tool System** with built-in and custom tools
4. **RAG Pipeline** with vector search and knowledge management
5. **Conversation Management** with persistent memory and state
6. **API Integration** with REST and WebSocket endpoints
7. **Interactive Development** with Jupyter notebooks for testing
8. **Production Ready** containerization and monitoring

This project template provides a complete foundation for building sophisticated AI agents with conversation management, tool integration, and retrieval-augmented generation capabilities using the modern Pydantic AI framework.
