# Mews Friend Preview Tap

This tap contains unnotarized, ad-hoc signed Mews preview builds for trusted
testers. It is not the stable distribution.

```bash
brew install --cask duan-jm/mews-preview/mews-friend-preview

# Review the source and release checksum before explicitly trusting the app.
xattr -dr com.apple.quarantine /Applications/Mews.app

mw setup
mw setup --yes
mw start
```

Upgrade:

```bash
mw stop
brew upgrade --cask duan-jm/mews-preview/mews-friend-preview
xattr -dr com.apple.quarantine /Applications/Mews.app
mw start
```

Uninstall:

```bash
mw undo
brew uninstall --cask duan-jm/mews-preview/mews-friend-preview
```

Release source and checksums are available from the
[Mews prerelease page](https://github.com/Duan-JM/Mews/releases/tag/v0.0.1-dev.1).
