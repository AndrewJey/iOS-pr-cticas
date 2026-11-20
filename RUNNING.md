

<!-- local-development:start -->
# Desarrollo local

Puedes abrir este repositorio en VS Code, Antigravity o Sublime Text. El compilador y los servicios necesarios dependen del componente indicado abajo.

## Archivos ignorados

`.gitignore` excluye credenciales locales, estado del editor y salidas de las herramientas detectadas. No deja de versionar archivos que ya estaban en Git. Los manifiestos, archivos de bloqueo, recursos fuente y scripts de esquema forman parte del código.
<!-- local-development:end -->


<!-- improvements-20261120:start -->
## Mejoras y verificación — 2026-11-20 (Modelo SwiftUI `PracticeTaskStore` y playground interactivo iOS HIG)

- **Cambios:** Añadido `Sources/PracticeTaskStore.swift` (Swift 5+ `Identifiable`/`Codable`) y playground interactivo `web-demo/index.html` con diseño iPhone HIG, tareas persistentes en `localStorage` y tema claro/oscuro.
- **Validación:** Node 24 `node --test web-demo/tests/demo.test.mjs` (sintaxis JS y existencia del módulo Swift verificadas).
<!-- improvements-20261120:end -->
