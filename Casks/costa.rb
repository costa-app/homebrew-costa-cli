cask "costa" do
  version "0.0.0" # GoReleaser will overwrite this when it updates the tap
  sha256 :no_check # GoReleaser will overwrite this with a real sha256

  # ⚠️ Update this filename to match the actual artifact GoReleaser uploads.
  # Common patterns look like:
  #   costa_#{version}_darwin_universal.tar.gz
  #   costa_#{version}_darwin_all.tar.gz
  #   costa_#{version}_darwin_arm64.tar.gz (if not universal)
  url "https://github.com/costa-app/costa-cli/releases/download/v#{version}/costa_#{version}_darwin_universal.tar.gz"

  name "Costa CLI"
  desc "Costa CLI"
  homepage "https://github.com/costa-app/costa-cli"

  binary "costa"

  test do
    system "#{bin}/costa", "--help"
  end
end
