class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.10.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.3/syllago-darwin-arm64"
      sha256 "5ac25ba80b1486d5f38086ac48e407c1b97d96fc04b343e7dfbc5537e55a2d1c"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.10.3/syllago-darwin-amd64"
      sha256 "66c54673fe70bf87297b8ffd212c8ee56829f79eb580c6982bb13cbbf9456790"
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
