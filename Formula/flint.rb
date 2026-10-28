class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.1/flint_0.14.1_darwin_arm64.tar.gz"
      sha256 "e5810c5e5b76af805ac5eefc4d1cec8372d8588ad5791fc17df545058bd5ae14"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.1/flint_0.14.1_darwin_amd64.tar.gz"
      sha256 "03a49e625efbf238f09d36b2dc5c4fc113662510ade37b650a16dc1dbc8f59d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.1/flint_0.14.1_linux_arm64.tar.gz"
      sha256 "f276eb4668314a6d103c31d23d61e6ab0966e6cff8da9951aac0b4b99ff5d9f2"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.1/flint_0.14.1_linux_amd64.tar.gz"
      sha256 "432dc2f6426019617f2d56658e6faca6c5c9e46bb500ab4bb5af12d9965fd3f4"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
