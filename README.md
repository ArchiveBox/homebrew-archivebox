# ArchiveBox Homebrew Tap

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

## Maintenance

There is one supported formula path:

- `Formula/archivebox.rb` installs ArchiveBox from the pinned `dev` git revision.
- `bin/build_brew.sh` rewrites that formula from ArchiveBox's `pyproject.toml`
  and current `dev` commit.
- `.github/workflows/update-archivebox-dev.yml` commits formula updates.

Do not add Python `resource` blocks, bottles, or generated dependency lists. ArchiveBox's
Python dependencies live in `ArchiveBox/ArchiveBox` package metadata and are resolved in
the formula's Python virtualenv at install time.
