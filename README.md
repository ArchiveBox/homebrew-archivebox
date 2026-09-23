# ArchiveBox Homebrew Tap

```bash
brew tap archivebox/archivebox
brew trust archivebox/archivebox
brew install archivebox

mkdir -p ~/archivebox/data
cd ~/archivebox/data
archivebox init
archivebox install
```

The release pipeline regenerates this tap's formula after each verified
ArchiveBox publication, including stable releases from `main` and prereleases
from `dev`. The formula installs the exact published wheel and verifies its hash.

This is a thin Homebrew wrapper around ArchiveBox's verified PyPI wheel, for users that prefer installing and updating with `brew`.

## Upgrade

Run Homebrew and ArchiveBox as your normal user, without `sudo`:

```bash
brew update
brew upgrade archivebox
cd ~/archivebox/data
archivebox init
archivebox install
```

## Maintenance

- `Formula/archivebox.rb` runs one exact PyPI wheel through Homebrew's prebuilt
  `uv` dependency. A tiny Linux bottle avoids requiring build tools just to
  install the wrapper, and published bottles remain available for stale taps.
- `bin/build_brew.sh` verifies the requested release against PyPI and rewrites
  the formula.
- `.github/workflows/update-archivebox-dev.yml` commits formula updates.

Do not add Python `resource` blocks or generated dependency lists. ArchiveBox's Python
dependencies live in `ArchiveBox/ArchiveBox` package metadata and are resolved in uv's
normal tool environment at runtime.
