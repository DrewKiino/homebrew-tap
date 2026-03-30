class Meshup < Formula
  desc "Mesh networking for local services — expose localhost through a relay with P2P upgrade"
  homepage "https://github.com/DrewKiino/meshup"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-aarch64-apple-darwin-0.1.0.tar.gz"
      sha256 "aa26f0c37a076cabc8be34759d9b9a42eed6215bdb2038f0918a20f7e7e0d633"
    else
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-x86_64-apple-darwin-0.1.0.tar.gz"
      sha256 "337c1b53246196d330b6ceddb069382396e4d3d4144fc979ff69943c1df006b1"
    end
  end

  on_linux do
    url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-x86_64-unknown-linux-gnu-0.1.0.tar.gz"
    sha256 "4d571e618fe2eb628cd2d2f120156ee5999588bbe4b7831a8eb6c73f26d7f213"
  end

  def install
    bin.install "meshup"
  end

  test do
    assert_match "Mesh networking", shell_output("#{bin}/meshup --help")
  end
end
