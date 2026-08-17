# Mews Homebrew Tap

Install the current public preflight:

```bash
brew install --cask duan-jm/mews/mews
xattr -dr com.apple.quarantine /Applications/Mews.app

mw setup
mw setup --yes
mw start
```

Upgrade:

```bash
mw stop
brew update
brew upgrade --cask mews
xattr -dr com.apple.quarantine /Applications/Mews.app
mw start
```

Uninstall:

```bash
mw undo
brew uninstall --cask mews
```

Mews preflight builds are ad-hoc signed. Review the matching
[GitHub Release](https://github.com/Duan-JM/Mews/releases) and checksum before
removing quarantine.
