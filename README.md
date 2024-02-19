# homebrew-archivebox

The official brew.sh formula for [ArchiveBox](https://github.com/ArchiveBox/ArchiveBox), the self-hosted internet archiving solution.

## Quickstart

```bash
# 🧙‍♀️ ✨ the magic incantation
brew tap archivebox/archivebox
brew install archivebox

# sometimes brew is few minor versions behind latest version, upgrade to latest with pip
pip install --upgrade --ignore-installed archivebox yt-dlp playwright

# make sure you have Chrome/Chromium in /Applications, or install it with playwright
playwright install --with-deps chromium

mkdir -p ~/archivebox/data && cd ~/archivebox/data  # data folder can be anywhere
archivebox init --setup
archivebox version
archivebox add 'https://example.com'
archivebox help
```

https://github.com/ArchiveBox/ArchiveBox/wiki/Install#option-c-bare-metal-setup

---

Tested on macOS >= 11. (Linux users should install via [`apt`/`deb`](https://launchpad.net/~archivebox/+archive/ubuntu/archivebox/+packages) or `pip` instead)


## Development


Make sure you're in the main ArchiveBox repo folder first.
```bash
cd ArchiveBox/
git submodule update --init --recursive
git pull --recurse-submodules

# Install the package locally during testing
brew install --debug --verbose --interactive ./archivebox.rb
brew test-bot --tap=ArchiveBox/homebrew-archivebox archivebox/archivebox/archivebox

# Commit any changes to archivebox.rb, build the bottle and push to github
brew uninstall archivebox
brew untap archivebox/archivebox
# push the latest archivebox.rb to gitub, then install and bottle it from github
brew install --build-bottle archivebox
brew bottle archivebox
git add .
git commit -m "new release ✨"
git push origin main

# or use the script
./bin/build_brew.sh
./bin/release_brew.sh
```
