# Homebrew ArchiveBox Agent Guide

This repo is the Homebrew tap for ArchiveBox. Keep this repo on `main`.

## Shared Standards

- Use `uv` and `uv run` for Python commands. Do not use system `python`, direct `.venv/bin/python`, or `pip` commands.
- Prefer existing repo patterns, helper APIs, fixtures, scripts, and command surfaces.
- Keep edits focused and minimal. Do not add wrappers, shims, aliases, or extra abstraction layers unless the current code path requires them.
- Do not weaken assertions, skip tests, xfail tests, or accept flaky behavior.
- No mocks, monkeypatches, fakes, simulated package managers, fake binaries, fake install processes, or direct shortcuts around user-facing flows.
- Tests and verification should use real build scripts, real Homebrew commands where applicable, real CLI commands, real files, and real ArchiveBox collection behavior.
- Assertions must verify real correctness: formula content, installed paths, exit codes, ArchiveBox CLI output, DB state, filesystem contents, and side effects.
- Start behavior fixes with a red failing test when a test is requested or practical.
- Trace root causes from observed behavior. Do not paper over failures with retries, wider timeouts, broad fallbacks, or looser assertions.
- Read `README.md` for the full formula build, install, verification, and publishing surface.

## Development Setup

```bash
ARCHIVEBOX_VERSION=0.9.35rc175 ./bin/build_brew.sh
```

## User-Facing Setup

Recommended ArchiveBox install:

```bash
uv tool install archivebox
mkdir -p ~/archivebox/data
cd ~/archivebox/data
archivebox init --install
archivebox add 'https://example.com'
```

Alternative install methods:

- Docker Compose / Docker
- Homebrew
- Debian package
- pip

## Basic Usage

```bash
ARCHIVEBOX_VERSION=0.9.35rc175 ./bin/build_brew.sh
sed -n '1,180p' Formula/archivebox.rb
```

Formula maintenance should stay small and should delegate runtime dependency work to `archivebox install`.
