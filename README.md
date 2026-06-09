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

This tap tracks `ArchiveBox/ArchiveBox@dev`. The formula is regenerated when the
`dev` branch changes, with an hourly fallback workflow in this repo.

This is not a "proper homebrew package" it's just a wrapper for the normal `pip`-based install, for users that prefer installing & updating with brew.

## Maintenance

- `Formula/archivebox.rb` installs ArchiveBox from the pinned `dev` git revision.
- `bin/build_brew.sh` rewrites that formula from ArchiveBox's `pyproject.toml`
  and current `dev` commit.
- `.github/workflows/update-archivebox-dev.yml` commits formula updates.

Do not add Python `resource` blocks, bottles, or generated dependency lists. ArchiveBox's
Python dependencies live in `ArchiveBox/ArchiveBox` package metadata and are resolved in
the formula's Python virtualenv at install time.
