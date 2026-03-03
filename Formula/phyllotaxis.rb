class Phyllotaxis < Formula
  desc "Progressive disclosure CLI for OpenAPI specs"
  homepage "https://github.com/OpenScribbler/phyllotaxis"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-apple-darwin.tar.gz"
      sha256 "e459c5de37451af5c144db2cda68459007878335de649cb32d9d2341663c964f"
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-apple-darwin.tar.gz"
      sha256 "29b186688bab5cc7c20498f00d81bb67603a56b490277c2dd63ecb43ffccc20d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "866ac913a52c923b14b5b3747a16d5c32420375f60974f1076bdf38aa4075201"
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad6fd3faaa71fc89a3283a894560eb0957158faefb81103095f38e56299de7b3"
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
