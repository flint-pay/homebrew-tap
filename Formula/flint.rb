class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.0/flint_0.17.0_darwin_arm64.tar.gz"
      sha256 "2b8cfc31e21e3675d738e03bb1b3eb33a30e00b5d6086a58dcd0fd7ae4292a5b"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.0/flint_0.17.0_darwin_amd64.tar.gz"
      sha256 "899c795b326b2d4cebeefdfdab91f20952943c586e3673c3f5f2f410450b8b18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.0/flint_0.17.0_linux_arm64.tar.gz"
      sha256 "d13dc45dcb76818955d5a4c12290907ba35befd51f13bc13063eb20f27d04546"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.0/flint_0.17.0_linux_amd64.tar.gz"
      sha256 "caa2c32523f547c8dec7fd42cca43547ae31ca74553c523a5d2b313593e74582"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
