class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.1.1/flint_0.1.1_darwin_arm64.tar.gz"
      sha256 "8b6cc1ccc9b453172a86d7c3d4c21f4cff46007ec26cf4576dd9fe389e282b7f"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.1.1/flint_0.1.1_darwin_amd64.tar.gz"
      sha256 "1748d7689e6fbe8149921ef08d22640cbb2e9f5f16f88fe7637589d41f4ca1d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.1.1/flint_0.1.1_linux_arm64.tar.gz"
      sha256 "2370f179df9bc3e472d51704dc483012aede9161d31da6bdd425f30a64e5c4b1"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.1.1/flint_0.1.1_linux_amd64.tar.gz"
      sha256 "e36fe0986edafc86ddc9b310757e0d8de65bab119b408730572c509187aeb9fb"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
