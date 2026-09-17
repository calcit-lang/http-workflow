# Upgrade Calcit 0.15.3 and audit syntax rules

- Raise the exact Calcit runtime baseline from 0.14.17 to 0.15.3 while keeping all three modules on their latest published releases.
- Read the current upgrade guidance and preview the versioned `surface-latest-v2` syntax rules across the complete Snapshot; no source rewrite is applicable.
- Classify the handler's request and response `Dynamic` slots as one narrow, intentional FFI boundary matching `calcit-http`; unresolved Dynamic debt remains zero.
- Keep strict preprocessing, deprecated API, and dynamic-method checks at their existing zero-dynamic-dispatch boundary.
- Stop marking `calcit.cirru` as generated so future source reviews show Snapshot changes normally.
- Document the reproducible dependency, toolchain, server, and syntax-audit commands.
