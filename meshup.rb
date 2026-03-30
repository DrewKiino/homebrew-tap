class Meshup < Formula
  desc "Mesh networking for local services — expose localhost through a relay with P2P upgrade"
  homepage "https://github.com/DrewKiino/meshup"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-aarch64-apple-darwin-0.1.0.tar.gz"
      sha256 "4005224561ba4ee1aedca928cf5be6ce65866b48ff8e79921c103ce464207c09"
    else
      url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-x86_64-apple-darwin-0.1.0.tar.gz"
      sha256 "3a37b2b963f60b230e7c4076ced6a71d1d514400618744e2028cbcfd77c7abb9"
    end
  end

  on_linux do
    url "https://github.com/DrewKiino/meshup/releases/download/prod-0.1.0/meshup-x86_64-unknown-linux-gnu-0.1.0.tar.gz"
    sha256 "e4d534069da04aece0d70a3ee89cc343e6d6df09d96c7993dc564c2a5acbd205"
  end

  def install
    bin.install "meshup"
  end

  test do
    assert_match "Mesh networking", shell_output("#{bin}/meshup --help")
  end
end
