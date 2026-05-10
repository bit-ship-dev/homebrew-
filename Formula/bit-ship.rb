class BitShip < Formula
  desc "Bit-Ship CLI is tool that analyses your code and generates a custom environment for your needs\nYou can use if to local development, CI/CD or even production."
  homepage "https://www.bit-ship.dev"

  url "https://registry.npmjs.org/bit-ship/-/bit-ship-0.5.0-1eb2838.tgz"
  sha256 "cadd5b543d2fbf1ac76f86c324ff42d8141342aba3116d357331bd1554eadc99"

  version "0.5.0-1eb2838"
  license "MIT"

  depends_on "node@24"
  depends_on "podman"

  def install
    system "#{Formula["node"].opt_bin}/npm", "install", "-g", "--prefix", prefix, "bit-ship"
    bin.install_symlink "bit-ship" => "bit-pod"
    bin.install_symlink "bit-ship" => "bitship"
    bin.install_symlink "bit-ship" => "bitpod"
  end

  test do
    system "#{bin}/bit-ship", "--version"
  end
end
