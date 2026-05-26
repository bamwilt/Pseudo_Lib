# PseudoLib Web Help

## What does this tool do?

It analyzes PSeInt code files, finds which PseudoLib functions are being used but not defined in your files, and automatically injects them from the PseudoLib.psc file.

## Step by step guide

### 1. Load source files
- Click "Cargar Fuentes".
- Select one or more `.psc` or `.txt` files.
- Files are concatenated alphabetically in the source code editor.

### 2. Load the parent oracle
- Click "Cargar Padre".
- Select the `PseudoLib.psc` file.
- This file contains all available PseudoLib functions.

### 3. Analyze dependencies
- Click "Analizar".
- The tool examines your source code, finds all called functions, and checks which ones are not defined locally.
- It looks up those functions in the parent file.
- It shows a dependency tree grouped by module (each module is collapsible).

### 4. Inject dependencies
- Click "Inyectar".
- It copies all missing functions from the parent into the result editor.
- Dependencies are grouped under the `///==========[DEPENDECES]` section.

### 5. Download result
- Click "Descargar".
- It saves the `PseudoLib_merged.psc` file with all source code plus injected dependencies.

## Technical notes

- The analysis uses BFS (breadth-first search) for transitive dependency resolution.
- Functions with specific prefixes are automatically assigned to their modules.
- `KNOWN_MAPPINGS` resolves ~85 special functions that don't follow the prefix pattern.
- PSeInt reserved words and native functions are excluded from analysis.

## Troubleshooting

- **Nothing happens when clicking**: Make sure you have loaded both source files and the parent.
- **Many "unknown" dependencies**: Verify the parent is the correct PseudoLib.psc file.
- **The result doesn't compile in PSeInt**: Check dependency order; some functions may require others to be defined first.
