# Cairo Coder MCP Server

Un serveur MCP (Model Context Protocol) pour l'assistance au développement Cairo et Starknet via l'API Cairo Coder.

## Installation

Vous pouvez utiliser ce serveur MCP directement avec npx sans installation préalable :

```bash
npx -y @kasarlabs/cairo-coder-api
```

## Configuration

### Variables d'environnement

- `CAIRO_CODER_API_KEY` : Votre clé API Cairo Coder (obligatoire)

### Configuration Claude Desktop

Ajoutez la configuration suivante à votre fichier `claude_desktop_config.json` :

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

## Outils disponibles

### assist_with_cairo

Obtenez de l'aide pour vos tâches de développement Cairo et Starknet.

**Paramètres :**

- `query` (string, requis) : Votre question ou demande de développement Cairo/Starknet
- `context` (string, optionnel) : Contexte supplémentaire ou extraits de code

**Exemples d'utilisation :**

```typescript
// Demande simple
{
  "query": "Write a simple Cairo contract that implements a counter"
}

// Avec contexte
{
  "query": "How can I optimize this contract?",
  "context": "#[starknet::contract]\nmod Counter {\n    // existing code here\n}"
}
```

## Capacités

Ce serveur MCP vous permet de :

- **Écrire du code Cairo** : Générer des contrats intelligents et du code Cairo
- **Refactoriser** : Améliorer et optimiser le code existant
- **Implémenter des fonctionnalités** : Compléter des TODOs et implémenter des parties spécifiques
- **Comprendre l'écosystème Starknet** : Obtenir des informations contextuelles sur Starknet
- **Meilleures pratiques** : Recevoir des conseils basés sur la documentation Cairo/Starknet

## Bonnes pratiques

- **Requêtes spécifiques** : Utilisez des requêtes ciblées pour de meilleurs résultats (ex: "Using Openzeppelin to build an ERC20" plutôt que juste "ERC20")
- **Intégrez le code** : Incluez des extraits de code pertinents si la tâche est liée à du code existant
- **Contexte** : Fournissez le contexte nécessaire pour des réponses plus précises

## Développement

### Prérequis

- Node.js >= 18
- npm ou yarn

### Installation locale

```bash
git clone <repository-url>
cd cairo-coder-api
npm install
```

### Scripts disponibles

```bash
# Build du projet
npm run build

# Démarrage en mode développement
npm run dev

# Démarrage en production
npm start
```

### Structure du projet

```
src/
├── index.ts          # Serveur MCP principal
package.json          # Configuration du package
tsconfig.json         # Configuration TypeScript
README.md            # Documentation
```

## API Cairo Coder

Ce serveur utilise l'API Cairo Coder disponible à l'adresse :
`https://api.cairo-coder.com/v1/chat/completions`

Assurez-vous d'avoir une clé API valide pour utiliser ce service.

## Licence

MIT

## Support

Pour les problèmes et questions :

- Issues GitHub : [Créer une issue](https://github.com/kasarlabs/cairo-coder-api/issues)
- Documentation MCP : [Model Context Protocol](https://modelcontextprotocol.io/)

## Contribution

Les contributions sont les bienvenues ! Veuillez consulter les guidelines de contribution avant de soumettre une PR.
