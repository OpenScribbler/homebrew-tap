class Syllago < Formula
  desc "AI coding tool content manager"
  homepage "https://github.com/OpenScribbler/syllago"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.12.0/syllago-darwin-arm64"
      sha256 "21575f7fcb2e075e9141374047c45bdefd3be1d948add9acaf0c8ba5741cd1e1"
    else
      url "https://github.com/OpenScribbler/syllago/releases/download/v0.12.0/syllago-darwin-amd64"
      sha256 "86cf6360ab4528a3a2db6a64a5fb3a1044268cf971336e9fd09bc6c6d17bb922"
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
