class Meshup < Formula
  desc "Mesh networking for local services — expose localhost through a relay with P2P upgrade"
  homepage "https://github.com/DrewKiino/meshup"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.1/meshup-aarch64-apple-darwin-0.1.1.tar.gz"
      sha256 "11b0f44910eb55a5bbd9e16e3cb23389fc20b88d436f089c36b98bd0f2b81fdd"
    else
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.1/meshup-x86_64-apple-darwin-0.1.1.tar.gz"
      sha256 "ae820f0d3d183aba41d70ad6d499baa260196bf71987a65b0ddae4a719e304fa"
    end
  end

  on_linux do
    url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.1/meshup-x86_64-unknown-linux-gnu-0.1.1.tar.gz"
    sha256 "8fd4db6bf6be4386232cd218db634c89a0e63efef44f32a7d1596dad10b70470"
  end

  def install
    bin.install "meshup"
  end

  test do
    assert_match "Mesh networking", shell_output("#{bin}/meshup --help")
  end
end
