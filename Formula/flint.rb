class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.6/flint_0.20.6_darwin_arm64.tar.gz"
      sha256 "8d91140bd5fc131a6bbf93dc5ca17b2f2ddb8aec257e23553e2d4bf48fc68518"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.6/flint_0.20.6_darwin_amd64.tar.gz"
      sha256 "5c09dddcde00858c9472ceae4cf14fd6323c9968126b4e1381e1b5255a95a420"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.6/flint_0.20.6_linux_arm64.tar.gz"
      sha256 "2a536c322f2718b5f1d779697f792a4021a1eef1442c5f9f05258aafcd6213ba"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.6/flint_0.20.6_linux_amd64.tar.gz"
      sha256 "6b507ef39d94642bea35e99cab09c66c88d2e3f9c051eb1df3c567f1ca74b0cd"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
