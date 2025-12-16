cask "costa-beta" do
  version "0.0.0" # GoReleaser will overwrite this with the prerelease version
  sha256 :no_check # GoReleaser will overwrite this with the real sha256

  # Must match the prerelease asset name produced by GoReleaser
  url "https://github.com/costa-app/costa-cli/releases/download/v#{version}/costa_#{version}_darwin_universal.tar.gz"

  name "Costa CLI (Beta)"
  desc "Costa CLI prerelease / beta"
  homepage "https://github.com/costa-app/costa-cli"

  conflicts_with cask: "costa"

  binary "costa"

  test do
    system "#{bin}/costa", "--help"
  end
end
