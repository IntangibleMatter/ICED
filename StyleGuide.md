# Styleguide for ICED
***Written by IntangibleMatter***

## EXCEPTIONS
- **ICED** is always written in all capital letters.

## Code
- Every *Class*, *Scene*, *Object*, *Script*, or otherwise should be written in Capitalized `PascalCase`
- Every *function*, *variable*, or otherwise should be written in `camelCase`
- `$` is ALWAYS preferred to `get_node`
- if a node will be accessed from a script AT ALL, it should be set as a `preload` at the beginning, and NEVER called throughout the script with `$`
- Tabs, not spaces. It's just how I've configured VSCode.

## Files
- *folders* are written in `camelCase`