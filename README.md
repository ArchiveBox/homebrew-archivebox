> [!IMPORTANT]
> ## ✨ ArchiveBox no longer needs to be `brew`-installed
>
> ✅ ArchiveBox still fully supports macOS, don't worry!  
> 📦 Just install it using `pip` (or `pipx`) instead now:
> ```bash
> mkdir -p ~/archivebox/data
> cd ~/archivebox/data     # (for example, can be anywhere)
>
> pip install archivebox   # just use pip to get archivebox
> archivebox install       # then finish installing dependencies
> ```

---

## Historical Context

We moved away from `brew` because `pip` provides a simpler install experience for most users.  
This change also allows us to transition to a new plugin-based architecture where ArchiveBox can add/remove new plugins and their dependencies at runtime.

Now we do something similar to [`playwright`](https://playwright.dev/python/docs/browsers#install-browsers) where the base package is provided via `pip`,
and then you call `archivebox install` to finish installing any system dependencies that are still needed. ArchiveBox uses our own new [`pydantic-pkgr`](https://github.com/ArchiveBox/pydantic-pkgr) library (*check it out!*) to manage
it's runtime dependencies, which in turn relies on the excellent [`pyinfra`](https://pyinfra.com/) library (and/or [`ansible`](https://ansible.readthedocs.io/)) to do the actual installing.

### Prefer doing it the old way?

**See here for manual install instructions for all of ArchiveBox's dependencies on macOS:**  
https://github.com/ArchiveBox/ArchiveBox/wiki/Install#macos

<details>
<summary>Or expand to see old README for this repo (only useful for historical context)</summary>

## ~~Quickstart~~

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

~~Tested on macOS >= 11. (Linux users should install via [`apt`/`deb`](https://launchpad.net/~archivebox/+archive/ubuntu/archivebox/+packages) or `pip` instead)~~


## ~~Development~~


~~Make sure you're in the main ArchiveBox repo folder first.~~
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

</details>
