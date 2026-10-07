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
- `bin/build_brew.sh` downloads and verifies the requested PyPI wheel and rewrites
  the formula. The coordinator supplies `ARCHIVEBOX_WHEEL_URL` and
  `ARCHIVEBOX_WHEEL_SHA256` from the tested release artifact, so a fresh release
  does not depend on another region's PyPI metadata cache. Manual maintenance
  with only `ARCHIVEBOX_VERSION` resolves that version through PyPI first.
- `.github/workflows/update-archivebox-dev.yml` commits formula updates.

Do not add Python `resource` blocks or generated dependency lists. ArchiveBox's Python
dependencies live in `ArchiveBox/ArchiveBox` package metadata and are resolved in uv's
normal tool environment at runtime.
