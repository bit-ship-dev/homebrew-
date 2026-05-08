class BitShip < Formula
  desc "Containerized deployment tool"
  homepage "https://www.bit-ship.dev"
  url "https://registry.npmjs.org/bit-ship/-/bit-ship-0.5.0-27c4463.tgz"
  sha256 "sha512-fjJFeA0irVwHHVVlj6ZwREbw1zG7Tppgu0SPPeMkzS88GxKeB3fdcuho2ps5Jdg+r6+WctJKNXOgXRXkKqiOQg=="
  version "0.5.0-27c4463"
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
