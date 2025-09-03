# 🤖 Pydantic AI Agent - Project Bootstrap Prompt

Copy and paste this prompt to GitHub Copilot to create a complete Pydantic AI Agent project:

---

## Project Initialization Request

```text
Please create a new Pydantic AI Agent project using the template from:
https://github.com/andrelohmann/copilot-project-template

PROJECT REQUIREMENTS:
✅ Technology Stack: Pydantic AI + Python 3.11 + FastAPI + Vector Database + Multi-LLM
✅ Architecture: Agent-based with Tool System and Memory Management
✅ Features: RAG Pipeline, Conversation State, Multi-Modal Support
✅ Integration: Multiple LLM providers (OpenAI, Anthropic, Ollama)
✅ Project Name: "pydantic-ai-agent"

CORE AGENT FEATURES TO IMPLEMENT:
1. Pydantic AI agent framework with conversation management
2. Multi-provider LLM support (OpenAI, Anthropic, Ollama, Azure)
3. Dynamic tool system with built-in and custom tools
4. RAG pipeline with vector database and semantic search
5. Persistent memory and conversation state management
6. Multi-modal capabilities (text, images, documents)
7. Real-time chat via WebSocket and REST API
8. Interactive development environment with Jupyter notebooks

REQUIRED DEPENDENCIES:
- pydantic-ai (AI agent framework)
- openai, anthropic, ollama (LLM providers)
- chromadb, sentence-transformers (Vector database and embeddings)
- fastapi, uvicorn, websockets (Web framework and real-time communication)
- langchain-text-splitters, pypdf, python-docx (Document processing)
- sqlalchemy[asyncio], redis (Database and caching)
- pytest, jupyter, black, mypy (Development and testing tools)

AGENT ARCHITECTURE:
/app/agents/ - AI agent implementations (base, chat, RAG, specialist)
/app/tools/ - Tool system (builtin tools, custom tools, registry)
/app/models/ - LLM providers and embedding models
/app/memory/ - Conversation state and vector storage
/app/rag/ - Retrieval Augmented Generation pipeline
/app/api/ - FastAPI endpoints and WebSocket chat
/tests/ - Comprehensive test suite
/notebooks/ - Interactive development and testing

BUILT-IN TOOLS TO CREATE:
Web Search Tool:
- Search the internet for current information
- Parse and summarize search results
- Handle rate limiting and error recovery

Calculator Tool:
- Perform mathematical calculations
- Support complex expressions and functions
- Validate input and handle errors

File Operations Tool:
- Read and write files (text, JSON, CSV)
- Process uploaded documents
- Extract text from PDFs and Word documents

Code Execution Tool:
- Execute Python code safely in sandbox
- Return results and handle errors
- Support data analysis and visualization

RAG PIPELINE FEATURES:
Document Ingestion:
- Support multiple file formats (PDF, DOCX, TXT, HTML)
- Advanced chunking strategies (semantic, fixed, sliding window)
- Metadata extraction and preservation

Vector Search:
- Embedding generation with multiple models
- Similarity search with reranking
- Hybrid search (semantic + keyword)
- Context retrieval optimization

Knowledge Management:
- Document version control
- Incremental updates and sync
- Knowledge base organization

CONVERSATION MANAGEMENT:
Memory Systems:
- Short-term memory for current conversation
- Long-term memory for user preferences
- Episodic memory for conversation history
- Working memory for active context

State Management:
- Persistent conversation state across sessions
- Context window optimization
- Conversation summarization
- Multi-turn dialogue handling

API ENDPOINTS TO CREATE:
Chat Endpoints:
- POST /api/v1/chat (Send message to agent)
- GET /api/v1/conversations (List user conversations)
- GET /api/v1/conversations/{id} (Get conversation history)
- DELETE /api/v1/conversations/{id} (Delete conversation)

Agent Management:
- GET /api/v1/agents (List available agents)
- POST /api/v1/agents (Create custom agent)
- GET /api/v1/agents/{id} (Get agent configuration)
- PUT /api/v1/agents/{id} (Update agent settings)

Tool Management:
- GET /api/v1/tools (List available tools)
- POST /api/v1/tools/execute (Execute tool manually)
- GET /api/v1/tools/{tool_id}/schema (Get tool parameters)

Knowledge Base:
- POST /api/v1/knowledge/upload (Upload documents)
- GET /api/v1/knowledge/search (Search knowledge base)
- DELETE /api/v1/knowledge/{doc_id} (Remove document)

Real-time Communication:
- WebSocket /ws/chat (Real-time chat interface)
- Server-sent events for streaming responses
- Connection management and reconnection

DEVELOPMENT ENVIRONMENT:
- Devcontainer with Python 3.11, ChromaDB, Redis
- VS Code MCP servers for enhanced AI development
- Jupyter Lab for interactive agent testing
- Hot reload for rapid development iteration
- Environment-based configuration management

MULTI-LLM PROVIDER SUPPORT:
OpenAI Integration:
- GPT-4, GPT-3.5-turbo support
- Function calling and structured outputs
- Vision capabilities for image analysis
- Token usage tracking and cost optimization

Anthropic Claude:
- Claude-3 family model support
- Large context window handling
- Safety and alignment features
- API rate limiting and retry logic

Local Models (Ollama):
- Local LLM deployment and management
- Privacy-focused processing
- Custom model fine-tuning support
- Offline operation capabilities

Azure OpenAI:
- Enterprise-grade deployment
- Regional data residency
- Enhanced security and compliance
- Custom deployment configurations

MONITORING AND OBSERVABILITY:
Performance Tracking:
- Response time monitoring
- Token usage analytics
- Tool execution metrics
- Error rate tracking

Conversation Analytics:
- User engagement metrics
- Agent effectiveness scoring
- Tool usage patterns
- Knowledge base hit rates

Cost Management:
- LLM API cost tracking
- Usage quotas and alerts
- Provider cost comparison
- Optimization recommendations

TESTING AND QUALITY:
Unit Tests:
- Agent behavior testing
- Tool functionality validation
- RAG pipeline accuracy
- Memory system reliability

Integration Tests:
- End-to-end conversation flows
- Multi-provider LLM testing
- API endpoint validation
- WebSocket communication testing

Performance Tests:
- Load testing for concurrent users
- Memory usage optimization
- Vector search performance
- Response time benchmarking

Please bootstrap this project now using the copilot-project-template and implement all the core features listed above.
```

---

## What This Prompt Will Create

### 🧠 AI Agent Architecture
```
pydantic-ai-agent/
├── 🐳 .devcontainer/          # Python + ChromaDB + Redis container
├── ⚙️  .vscode/               # MCP servers + AI development extensions  
├── 🤖 .github/               # Copilot instructions for AI development
├── 🧠 app/agents/            # AI agent implementations
├── 🔧 app/tools/             # Tool system and registry
├── 🤖 app/models/            # LLM providers and routing
├── 🧠 app/memory/            # Conversation and vector storage
├── 📚 app/rag/               # RAG pipeline and retrieval
├── 🌐 app/api/               # FastAPI + WebSocket endpoints
├── 🧪 tests/                 # Comprehensive test suite
├── 📓 notebooks/             # Interactive development
└── 📊 data/                  # Knowledge base and embeddings
```

### 🚀 Core Capabilities

1. **🤖 Intelligent Agents**
   - Pydantic AI framework integration
   - Multi-provider LLM support
   - Conversation state management
   - Personality and behavior configuration
   - Function calling and structured outputs

2. **🔧 Dynamic Tool System**
   - Built-in tools (web search, calculator, file ops)
   - Custom tool development framework
   - Async tool execution with validation
   - Tool result caching and optimization
   - Permission-based tool access

3. **📚 RAG Pipeline**
   - Document ingestion and processing
   - Advanced chunking strategies
   - Vector embedding and similarity search
   - Context retrieval and reranking
   - Knowledge base management

4. **🧠 Memory Management**
   - Short-term and long-term memory
   - Persistent conversation state
   - Context window optimization
   - Conversation summarization
   - Multi-turn dialogue handling

5. **🌐 API Integration**
   - RESTful endpoints for agent interaction
   - WebSocket real-time chat
   - File upload and processing
   - Comprehensive API documentation
   - Authentication and rate limiting

### 🔌 LLM Provider Support

- **🌟 OpenAI**: GPT-4, GPT-3.5-turbo with function calling
- **🎭 Anthropic**: Claude-3 family with large context
- **🏠 Ollama**: Local models for privacy and offline use
- **☁️ Azure OpenAI**: Enterprise deployment with compliance
- **🔄 Auto-Fallback**: Intelligent provider switching

### 🛠️ Built-in Tools

- **🔍 Web Search**: Internet research with result parsing
- **🧮 Calculator**: Mathematical computations and analysis
- **📁 File Operations**: Document processing and management
- **💻 Code Execution**: Safe Python code execution sandbox
- **🖼️ Image Analysis**: Vision capabilities for image understanding
- **📊 Data Processing**: CSV, JSON, and structured data handling

### 📈 Development Experience

- **📦 One-Click Setup**: Devcontainer with all AI tools pre-installed
- **🔄 Hot Reload**: Instant agent updates during development
- **📓 Interactive Testing**: Jupyter notebooks for agent experimentation
- **🤖 AI-Enhanced**: GitHub Copilot optimized with MCP servers
- **📊 Monitoring**: Real-time performance and cost tracking

### 🎯 Use Cases

- **💬 Conversational AI**: Intelligent chatbots and assistants
- **📚 Knowledge Systems**: RAG-powered question answering
- **🔧 AI Automation**: Tool-using agents for task automation
- **📊 Data Analysis**: AI agents for data processing and insights
- **🔗 Integration Bots**: Agents that connect external systems
- **🎓 Educational AI**: Tutoring and learning assistance agents

### 🚀 Production Features

- **🐳 Containerized**: Production Docker setup with scaling
- **📊 Observable**: Comprehensive logging and monitoring
- **🔒 Secure**: API authentication and access control
- **💰 Cost-Optimized**: Token usage tracking and optimization
- **⚡ Performance**: Async architecture with caching

This prompt creates a complete, production-ready Pydantic AI agent platform with conversation management, tool integration, RAG capabilities, and multi-provider LLM support - everything needed to build sophisticated AI agents!
