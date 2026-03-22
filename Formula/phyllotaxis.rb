class Phyllotaxis < Formula
  desc "Progressive disclosure CLI for OpenAPI documents"
  homepage "https://github.com/OpenScribbler/phyllotaxis"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "phyllotaxis"
    bin.install "phyll"
  end

  test do
    assert_match "phyllotaxis", shell_output("#{bin}/phyllotaxis --version")
  end
end
