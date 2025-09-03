# 🌐 Static Homepage Generator - Project Bootstrap Prompt

Copy and paste this prompt to GitHub Copilot to create a complete static homepage project:

---

## Project Initialization Request

```text
Please create a new static homepage generator project using the template from:
https://github.com/andrelohmann/copilot-project-template

PROJECT REQUIREMENTS:
✅ Technology Stack: React 18 + Next.js 14 + Tailwind CSS 3.4 + TypeScript
✅ Content System: Markdown files with frontmatter processing
✅ Build Type: Static Site Generation (SSG) for deployment
✅ Corporate Identity: Color extraction from brand guideline files
✅ Project Name: "static-homepage-generator"

SPECIFIC FEATURES TO IMPLEMENT:
1. Markdown content processing with automatic page generation
2. Corporate brand color extraction from PDF/image files
3. Tailwind configuration with extracted brand colors
4. Responsive React components for page layouts
5. Blog/article system with date-based organization
6. SEO optimization with meta tags and structured data
7. Hot reload development environment with content preview

REQUIRED DEPENDENCIES:
- next@14 (React framework with SSG)
- tailwindcss@3.4 (@tailwindcss/typography, @tailwindcss/forms)
- remark, remark-html, gray-matter (Markdown processing)
- pdf-parse, sharp, color-thief (Corporate identity extraction)
- TypeScript, ESLint, Prettier (Development tools)

CONTENT STRUCTURE:
/content/pages/ - Static pages (about, contact, services)
/content/blog/ - Blog posts with date organization
/content/assets/ - Brand files, images, documents
/components/ - React layouts and UI components
/styles/ - Tailwind config with corporate colors

CORPORATE IDENTITY WORKFLOW:
- Extract colors from uploaded brand guideline PDFs
- Generate Tailwind color palette variables
- Apply consistent typography and spacing
- Integrate logos and brand assets automatically

DEVELOPMENT FEATURES:
- Devcontainer with Node.js, Markdown tools, and image processing
- VS Code MCP servers for enhanced development experience
- Hot reload for both code and content changes
- Live preview of styling and layout updates
- Component library for consistent page layouts

BUILD TARGETS:
- npm run dev (development with hot reload)
- npm run build (static site generation)
- npm run export (deployment-ready static files)
- Support for Vercel, Netlify, GitHub Pages deployment

Please bootstrap this project now using the copilot-project-template and set up all the required dependencies and folder structure.
```

---

## What This Prompt Will Create

### 📁 Project Structure
```
static-homepage-generator/
├── 🐳 .devcontainer/          # Node.js + image processing tools
├── ⚙️  .vscode/               # MCP servers + extensions
├── 🤖 .github/               # Copilot instructions
├── 📝 content/               # Markdown content files
│   ├── pages/               # Static pages
│   ├── blog/                # Blog posts
│   └── brand/               # Corporate identity files
├── 🧩 components/            # React components
│   ├── layouts/             # Page layouts
│   ├── ui/                  # Reusable components
│   └── markdown/            # Markdown renderers
├── 🎨 styles/               # Tailwind + brand styling
├── 🛠️  lib/                 # Utilities
│   ├── markdown.ts          # Content processing
│   ├── brand.ts             # Color extraction
│   └── seo.ts              # SEO utilities
├── 🌐 pages/                # Next.js pages
├── 📦 public/               # Static assets
└── ⚙️  config files          # Next.js, Tailwind, TypeScript
```

### 🚀 Key Capabilities

1. **📝 Content Management**
   - Write pages in Markdown with frontmatter
   - Automatic navigation generation
   - Blog system with categories and tags
   - Live preview during development

2. **🎨 Corporate Identity Integration**
   - Upload brand guideline PDFs
   - Automatic color palette extraction
   - Tailwind configuration generation
   - Consistent brand application

3. **⚡ Modern Development**
   - Hot reload for content and code
   - TypeScript for type safety
   - Component-based architecture
   - SEO optimization built-in

4. **📱 Responsive Design**
   - Mobile-first Tailwind utilities
   - Flexible grid systems
   - Optimized images and assets
   - Fast loading static pages

### 🎯 Use Cases

- **Corporate Websites**: Company homepages with brand consistency
- **Portfolio Sites**: Developer/designer portfolios with blog
- **Documentation Sites**: Technical docs with markdown content
- **Landing Pages**: Marketing pages with corporate branding
- **Blog Sites**: Content-driven sites with static generation

### 🔧 Development Workflow

1. **Content Creation**: Write markdown files in `/content/`
2. **Brand Setup**: Upload corporate identity files
3. **Color Extraction**: Automatic Tailwind color generation
4. **Component Development**: Build reusable React components
5. **Preview**: Live development server with hot reload
6. **Deploy**: Static site generation for hosting

This prompt creates a complete, production-ready static homepage generator that processes markdown content into beautifully styled pages with corporate branding integration.
