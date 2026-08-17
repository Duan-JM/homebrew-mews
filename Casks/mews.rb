cask "mews" do
  version "0.0.2"
  sha256 "43e4e7532ac29a2326a710e423f7175309d402b07110ef4e9bca4b50265f3863"

  url "https://github.com/Duan-JM/Mews/releases/download/v#{version}/mews-v#{version}-darwin.tar.gz"
  name "Mews"
  desc "Local companion for terminal AI agents"
  homepage "https://github.com/Duan-JM/Mews"

  depends_on macos: :ventura

  app "mews-v#{version}-darwin/libexec/Mews.app"
  binary "#{appdir}/Mews.app/Contents/Resources/mw", target: "mw"

  caveats <<~EOS
    This is an ad-hoc signed preflight build. After every install or upgrade:
      xattr -dr com.apple.quarantine /Applications/Mews.app

    Mews does not modify agent configuration during Homebrew installation.
    Review and apply the local setup plan:
      mw setup
      mw setup --yes
      mw start

    Before removing Mews, restore agent configuration:
      mw undo
      brew uninstall --cask mews
  EOS
end
