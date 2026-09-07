cask "mews" do
  version "0.0.3"
  sha256 "f75656ca0e7ce37188fab90eaecd9972b0f5fcb3a03ddfb5c3d1f744f37a15e8"

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
