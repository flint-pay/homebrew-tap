class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.18.0/flint_0.18.0_darwin_arm64.tar.gz"
      sha256 "102d93dbc5b5bfcc68d217eec50206a1e2f169305aa5c471531023be7fde8bb9"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.18.0/flint_0.18.0_darwin_amd64.tar.gz"
      sha256 "04aa32a845d317153858fffef36da25261f43a205b3dcc220fd02583ac2a2f2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.18.0/flint_0.18.0_linux_arm64.tar.gz"
      sha256 "4177550fbfb08823b02964dcbf5ef767aff387f73e8e454516a7a93956d82512"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.18.0/flint_0.18.0_linux_amd64.tar.gz"
      sha256 "01eaeb836dcdd07e7c4c01488085c50884cea034241d95f0a1e5fd87b30e57de"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
