class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.4/flint_0.20.4_darwin_arm64.tar.gz"
      sha256 "a5ec34feb12c2fed52e0b9a637484d13b1dad1037d1e0828158e7990e4e18bb2"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.4/flint_0.20.4_darwin_amd64.tar.gz"
      sha256 "8bac2498dc5d910a3c3666f3ee9e876b499fd5a460abfee01bdff2870e5c8f10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.4/flint_0.20.4_linux_arm64.tar.gz"
      sha256 "154361c8fbf454620e9f8f159724efe24066640b0792921c01259153358650ab"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.4/flint_0.20.4_linux_amd64.tar.gz"
      sha256 "d6cb269eb9a7588958ab2ddd206bf0e555129e09419f56525c5ea2390f200f24"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
