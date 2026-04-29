class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.11.0/syllago-darwin-arm64"
      sha256 "b4dbaba981393762aeaf708c84b863c45f177c1da5c12eba60cf7cbd2999969b"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.11.0/syllago-darwin-amd64"
      sha256 "cdf3927ff3074ca29fadf61df41d7603cc29e9c6ef7d8d21e07bbbcdd0f64013"
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
