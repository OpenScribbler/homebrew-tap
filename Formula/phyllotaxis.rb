class Phyllotaxis < Formula
  desc "Progressive disclosure CLI for OpenAPI documents"
  homepage "https://github.com/OpenScribbler/phyllotaxis"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-apple-darwin.tar.gz"
      sha256 "1d080c0451f0da52f654fcb3718939c367c5c320f84f0c0818acd9af550b6dfa"
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-apple-darwin.tar.gz"
      sha256 "5e027ed3eb9b85eadccfbbf4aba8d597f26310cc42a508032d7ce6db5d27cea4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edaec86a649c08ea2d0eb86f99b4b073167d6c749ab77adea7cd13e862e27b9e"
    end
    on_intel do
      url "https://github.com/OpenScribbler/phyllotaxis/releases/download/v#{version}/phyllotaxis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b3eaff4d0da1c4b78018fdc1a9bb2176d23f38703912c8c0e14a30a80a01798"
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
