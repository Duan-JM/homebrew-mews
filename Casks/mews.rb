cask "mews" do
  version "0.0.4"
  sha256 "c8c52dec0dbec8b8d91cfa08b639ccf34c4ab8b147b05c58cbe20ab86c489c25"

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
