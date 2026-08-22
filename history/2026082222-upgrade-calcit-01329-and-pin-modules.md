# 2026082218 Upgrade Calcit and pin module dependencies

- Updated the project runtime and JavaScript-facing Calcit procedures to 0.13.29.
- Replaced the retired `cr` setup and execution commands with `setup-calcit` and `calcit`.
- Pinned HTTP, JSON, and template modules to formal releases instead of tracking `main`.
- Updated stir-template to 0.0.9, whose release contains the calcit.cirru migration.
- Verified the Calcit source with the latest local CLI.
