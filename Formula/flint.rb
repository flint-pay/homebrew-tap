class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.1/flint_0.3.1_darwin_arm64.tar.gz"
      sha256 "5832364a03ad9c95f4c946f07116fe5f42810eae66dfe7bfcb2470977983152f"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.1/flint_0.3.1_darwin_amd64.tar.gz"
      sha256 "5d4a604c6cd0dbdb6ca0d81b780742d09c7cbe1656bf6c4a7d40dec629921129"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.1/flint_0.3.1_linux_arm64.tar.gz"
      sha256 "550297c1a2ac2c5d45185845b5e9f348d70a1ef4b1e309c90cc9555cbf16b2e3"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.1/flint_0.3.1_linux_amd64.tar.gz"
      sha256 "77f1d160a0087a51b31cf82a2a9b9495e5e6395cbaf01a5e0ed0bbbda0f400a5"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
