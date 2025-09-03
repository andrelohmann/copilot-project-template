# Static Homepage with React + Tailwind + Markdown

**Project Type**: Static Homepage Generator  
**Technology Stack**: React 18, Next.js 14, Tailwind CSS 3.4, TypeScript, Markdown Processing  
**Build System**: Next.js Static Site Generation (SSG)  
**Content Management**: Markdown files with frontmatter

## Project Initialization Prompt

```
I need you to create a new static homepage project using the copilot-project-template. This project should:

TECHNOLOGY REQUIREMENTS:
- Use React 18 with TypeScript
- Use Next.js 14 with static site generation (SSG)
- Use latest Tailwind CSS (3.4+) for styling
- Process Markdown files into static HTML pages
- Support corporate identity color schemes
- Generate a fully static website for deployment

PROJECT STRUCTURE:
Create a project that processes Markdown content files into beautifully styled static pages with React components and Tailwind CSS styling.

CONTENT MANAGEMENT:
- Markdown files with frontmatter for page metadata
- Support for nested page structures
- Automatic navigation generation from content structure
- Blog/article support with date-based organization
- Corporate branding integration from CI definition files

CORPORATE IDENTITY:
- Extract color schemes from corporate identity files (PDF, brand guidelines)
- Generate Tailwind color palette from brand colors
- Apply consistent typography and spacing based on brand guidelines
- Support for logo integration and brand asset management

DEVELOPMENT WORKFLOW:
- Hot reload during development
- Live preview of Markdown changes
- Component-based page layouts
- Responsive design with Tailwind utilities
- SEO optimization with meta tags and structured data

Please bootstrap this project using: https://github.com/andrelohmann/copilot-project-template

Name the project folder: "static-homepage-generator"
```

## Expected Project Structure

After initialization, the project should have:

```
static-homepage-generator/
├── .devcontainer/          # Development container with Node.js, markdown tools
├── .vscode/               # VS Code config with MCP servers
├── .github/               # Copilot instructions for static site development
├── content/               # Markdown content files
│   ├── pages/            # Static pages (about, contact, etc.)
│   ├── blog/             # Blog posts with date organization
│   └── assets/           # Images, documents, brand files
├── components/           # React components for layouts
│   ├── layouts/          # Page layout components
│   ├── ui/              # Reusable UI components
│   └── markdown/        # Markdown rendering components
├── styles/              # Tailwind configuration and custom styles
│   ├── globals.css      # Global styles with Tailwind
│   ├── brand-colors.js  # Corporate identity color definitions
│   └── components.css   # Component-specific styles
├── lib/                 # Utility functions
│   ├── markdown.ts      # Markdown processing utilities
│   ├── brand.ts         # Corporate identity extraction
│   └── seo.ts          # SEO utilities
├── public/             # Static assets
│   ├── brand/          # Corporate identity assets
│   └── images/         # Site images
├── pages/              # Next.js pages (auto-generated from content)
├── next.config.js      # Next.js configuration for SSG
├── tailwind.config.js  # Tailwind with corporate colors
└── package.json        # Dependencies for static site generation
```

## Technology Dependencies

The project should include these key dependencies:

**Core Framework:**
- `next@14` - React framework with SSG
- `react@18` - UI library
- `typescript` - Type safety

**Styling:**
- `tailwindcss@3.4` - Utility-first CSS framework
- `@tailwindcss/typography` - Beautiful typography for markdown
- `@tailwindcss/forms` - Form styling utilities

**Markdown Processing:**
- `remark` - Markdown processor
- `remark-html` - HTML generation from markdown
- `remark-frontmatter` - Frontmatter support
- `gray-matter` - Frontmatter parsing
- `rehype-highlight` - Syntax highlighting

**Corporate Identity:**
- `pdf-parse` - Extract colors from PDF brand guidelines
- `sharp` - Image processing for brand assets
- `color-thief` - Extract color palettes from images

**Development Tools:**
- `eslint` - Code linting
- `prettier` - Code formatting
- `@types/node` - Node.js types

## Key Features to Implement

### 1. Markdown Content Processing
- Frontmatter parsing for page metadata
- Automatic page generation from markdown files
- Support for nested content structures
- Blog post organization by date

### 2. Corporate Identity Integration
- PDF brand guideline parsing
- Automatic color palette extraction
- Logo and asset integration
- Consistent typography application

### 3. Static Site Generation
- Pre-rendering all pages at build time
- Optimized images and assets
- SEO meta tags and structured data
- Sitemap generation

### 4. Development Experience
- Hot reload for content changes
- Live preview of styling updates
- Component library for consistent layouts
- TypeScript for type safety

## Build and Deployment

The project should support:
- `npm run dev` - Development server with hot reload
- `npm run build` - Static site generation
- `npm run export` - Export static files for deployment
- Deployment to Vercel, Netlify, or GitHub Pages

## Corporate Identity Workflow

```ascii
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Brand Guidelines│────│ Color Extraction│────│ Tailwind Config │
│ (PDF/Images)    │    │ & Processing    │    │ Generation      │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Asset Library   │    │ Color Palette   │    │ Styled Components│
│ Management      │    │ Variables       │    │ & Layouts       │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## Expected Deliverables

After project initialization and setup:

1. **Functional Static Site Generator** with React and Tailwind
2. **Markdown Content System** with frontmatter support
3. **Corporate Identity Integration** with color extraction
4. **Responsive Layouts** with Tailwind utilities
5. **Development Environment** with hot reload and preview
6. **Build System** for static site generation
7. **Deployment Ready** configuration for static hosting

This project template provides a complete foundation for creating professional static websites with corporate branding integration and modern development workflows.
