# ArchiveBox Homebrew Tap

> [!CAUTION]
> This tracks `dev` releases, not stable! Report any issues you encounter please!  
> Use the normal `pip install archivebox` method if you want a stable release.

```bash
brew tap archivebox/archivebox
brew install archivebox

mkdir -p ~/archivebox/data
cd ~/archivebox/data
archivebox init
archivebox install
```

This tap tracks published `ArchiveBox/ArchiveBox@dev` prereleases. The release
pipeline regenerates the formula after each verified PyPI publication.

This is not a "proper homebrew package" it's just a wrapper for the normal `pip`-based install, for users that prefer installing & updating with brew.

## Maintenance

- `Formula/archivebox.rb` runs one exact PyPI wheel through Homebrew's prebuilt
  `uv` dependency.
- `bin/build_brew.sh` verifies the requested release against PyPI and rewrites
  the formula.
- `.github/workflows/update-archivebox-dev.yml` commits formula updates.

Do not add Python `resource` blocks, bottles, or generated dependency lists. ArchiveBox's
Python dependencies live in `ArchiveBox/ArchiveBox` package metadata and are resolved in
uv's normal tool environment at runtime.
