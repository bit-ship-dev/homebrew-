class BitShip < Formula
  desc "Containerized deployment tool"
  homepage "https://www.bit-ship.dev"

  version "1.0.0"
  license "MIT"

  depends_on "node"
  depends_on "podman"

  def install
    system "#{Formula["node"].opt_bin}/npm", "install", "-g", "bit-ship@latest"
  end

  test do
    system "#{bin}/bit-ship", "--version"
  end
end
