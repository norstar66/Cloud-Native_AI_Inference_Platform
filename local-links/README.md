# local-links

Machine-specific symlinks/paths for fast navigation during work.

## Purpose
Keep local-only shortcuts (Obsidian folders, external repos, vault paths) out of git while preserving a shared convention.

## Conventions
- Use clear names, e.g.:
  - `antigravity-docs`
  - `forbidden-kernel`
  - `course-assets`
- Prefer symlinks (`ln -s`) to avoid duplication.
- Do not store secrets here.

## Example
```bash
ln -s /absolute/path/to/target ./local-links/antigravity-docs
```

> `local-links/README.md` is tracked; all other files in this folder are ignored.
