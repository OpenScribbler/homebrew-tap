class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.13.0/syllago-darwin-arm64"
      sha256 "21a0539ed849d406a14e6e22d4b42f3b46a0cce974ba89d39630dd9e17c7c4e9"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.13.0/syllago-darwin-amd64"
      sha256 "1f88308a895963c97a86d39bf1aac649d3600b2fde35be22b142bcfeba1d4384"
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
