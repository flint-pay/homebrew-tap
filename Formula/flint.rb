class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.14.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.3/flint_0.14.3_darwin_arm64.tar.gz"
      sha256 "a6144c2f79f5443cd02f41a42201c98ca587a410c6b64ee575dc201e34896529"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.3/flint_0.14.3_darwin_amd64.tar.gz"
      sha256 "cfb453f3ffd9b95a0af5ee1d931723319d82e385ccf7c4963cd6f2bc4223dea7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.3/flint_0.14.3_linux_arm64.tar.gz"
      sha256 "347b75762d3315a715285ed45c4b136d47ccb1ded21245dca046b895e4142aab"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.3/flint_0.14.3_linux_amd64.tar.gz"
      sha256 "357571a6989022b55ea56b7eaadb3a4f64be7f0c8b47c9f55a3230fb979fb1f5"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
