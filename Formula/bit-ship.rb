class BitShip < Formula
  desc "Containerized deployment tool"
  homepage "https://www.bit-ship.dev"
  url "https://registry.npmjs.org/bit-ship/-/bit-ship-1.0.0.tgz"
  sha256 "REPLACE_WITH_SHA256"
  version "1.0.0"
  license "MIT"

  depends_on "node"
  depends_on "podman"

  def install
    system "#{Formula["node"].opt_bin}/npm", "install", "-g", "--prefix", prefix, "bit-ship"
  end

  test do
    system "#{bin}/bit-ship", "--version"
  end
end
