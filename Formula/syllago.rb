class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.14.0/syllago-darwin-arm64"
      sha256 "1017f70e120e4219ac4607251aecdaa309c369f36db967bb9eb079ddc36d2d5a"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.14.0/syllago-darwin-amd64"
      sha256 "a9403a496faa801f269fc7d3be282c7a408d92f576135a879e6df2bf125eab3e"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "syllago-darwin-arm64" : "syllago-darwin-amd64"
    bin.install binary => "syllago"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/syllago version")
  end
end
