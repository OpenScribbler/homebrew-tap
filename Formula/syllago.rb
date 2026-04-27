class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.2/syllago-darwin-arm64"
      sha256 "b687f308b8de6aedde16b08aecfd16677bdb9b581dc1860cab772e844925c965"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.2/syllago-darwin-amd64"
      sha256 "da999f8343b0c99b6750d87730f53a20b0dc03b2252564740ea9a60645ed94a1"
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
