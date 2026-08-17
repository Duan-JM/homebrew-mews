cask "mews-friend-preview" do
  version "0.0.1-dev.2"
  sha256 "73fd1257fd6f0a8d11487d196a77495967bd905768bc87b3faffaf114ec9f507"

  url "https://github.com/Duan-JM/Mews/releases/download/v0.0.1-dev.2/mews-v0.0.1-dev.2-darwin.tar.gz"
  name "Mews"
  desc "Local companion for terminal AI agents"
  homepage "https://github.com/Duan-JM/Mews"

  depends_on macos: :ventura

  app "mews-v#{version}-darwin/libexec/Mews.app"
  binary "#{appdir}/Mews.app/Contents/Resources/mw", target: "mw"

  caveats <<~EOS
    This friend preview is ad-hoc signed and is not a notarized stable release.
    After reviewing and installing it, explicitly allow the local app:
      xattr -dr com.apple.quarantine /Applications/Mews.app

    Mews does not modify agent configuration during Homebrew installation.
    Review and apply the local setup plan:
      mw setup
      mw setup --yes
      mw start

    Before removing Mews, restore agent configuration:
      mw undo
      brew uninstall --cask mews-friend-preview
  EOS
end
