class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.1/syllago-darwin-arm64"
      sha256 "2a837d5d9d674ce32763bc5dd2efbe806667ba5080c900ddf7b73d365a0ed628"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.1/syllago-darwin-amd64"
      sha256 "f1c980ef24b774dc8d210ce61fe0868ecd115706b3995ecc3ac93d0d1fddad4b"
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
