class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.5/flint_0.20.5_darwin_arm64.tar.gz"
      sha256 "eb5d4356c7b737da9736865b2f1c85d60e828fb7b8cac03833838212bce75aa1"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.5/flint_0.20.5_darwin_amd64.tar.gz"
      sha256 "adc751b1b174b000978841e883b2ca35a09eb09dc7a139f37b6b1477421fdd09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.5/flint_0.20.5_linux_arm64.tar.gz"
      sha256 "ccbfa61119240caa1426f0d11d9ea1f95d5a91d0d7e2f1145fb7b6a44ec82897"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.5/flint_0.20.5_linux_amd64.tar.gz"
      sha256 "2883f156565edfb4d92d72c5d5d82c9aa575937ed0da9846c4fc28c9eef70c3c"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
