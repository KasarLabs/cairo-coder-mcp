# Cairo Coder MCP Server

<div align="center">
  <img src="./cairo-grey.png" alt="Cairo Coder MCP Logo" width="300"/>
  
  [![npm version](https://img.shields.io/npm/v/@kasarlabs/cairo-coder-api.svg)](https://www.npmjs.com/package/@kasarlabs/cairo-coder-api)
  [![npm downloads](https://img.shields.io/npm/dm/@kasarlabs/cairo-coder-api.svg)](https://www.npmjs.com/package/@kasarlabs/cairo-coder-api)
  [![GitHub stars](https://img.shields.io/github/stars/kasarlabs/cairo-coder-mcp.svg)](https://github.com/kasarlabs/cairo-coder-mcp/stargazers)
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
</div>

A Model Context Protocol (MCP) server for Cairo and Starknet development assistance via the Cairo Coder API.

## Quick Start

Use this MCP server directly with npx:

```bash
npx -y @kasarlabs/cairo-coder-api
```

## Configuration

### Environment Variables

- `CAIRO_CODER_API_KEY`: Your Cairo Coder API key (required)

### Claude Desktop Setup

Add this configuration to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "cairo-coder": {
      "command": "npx",
      "args": ["-y", "@kasarlabs/cairo-coder-api"],
      "env": {
        "CAIRO_CODER_API_KEY": "your-api-key-here"
      }
    }
  }
}
```

## Available Tools

### assist_with_cairo

Get help with Cairo and Starknet development tasks.

**Parameters:**

- `query` (string, required): Your Cairo/Starknet development question
- `context` (string, optional): Additional context or code snippets

**Examples:**

```typescript
// Simple request
{
  "query": "Write a simple Cairo contract that implements a counter"
}

// With context
{
  "query": "How can I optimize this contract?",
  "context": "#[starknet::contract]\nmod Counter {\n    // existing code here\n}"
}
```

## What You Can Do

- **Write Cairo code**: Generate smart contracts and Cairo code
- **Refactor code**: Improve and optimize existing code
- **Implement features**: Complete TODOs and implement specific functionality
- **Learn Starknet**: Get contextual information about the Starknet ecosystem
- **Best practices**: Receive advice based on Cairo/Starknet documentation

## Tips for Better Results

- Use specific queries (e.g., "Using OpenZeppelin to build an ERC20" instead of just "ERC20")
- Include relevant code snippets when working with existing code
- Provide necessary context for more accurate responses

## Development

### Prerequisites

- Node.js >= 18
- npm or yarn

### Local Installation

```bash
git clone <repository-url>
cd cairo-coder-api
npm install
```

### Available Scripts

```bash
npm run build    # Build the project
npm run dev      # Start in development mode
npm start        # Start in production mode
```

## License

MIT

## Support

For issues and questions:

- GitHub Issues: [Create an issue](https://github.com/kasarlabs/cairo-coder-api/issues)
- MCP Documentation: [Model Context Protocol](https://modelcontextprotocol.io/)

## Contributing

Contributions are welcome! Please check the contribution guidelines before submitting a PR.
