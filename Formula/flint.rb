class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.13.0/flint_0.13.0_darwin_arm64.tar.gz"
      sha256 "b00f4b81940b3501d0e846772523d19188adcbb597f9c2db958e78ccafff101b"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.13.0/flint_0.13.0_darwin_amd64.tar.gz"
      sha256 "8c606b7e95fe6a3ba8249abf0c2e93e0d2f564b266285f6f075947542339d8e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.13.0/flint_0.13.0_linux_arm64.tar.gz"
      sha256 "1196d4383a27dda312ae20a84660b337dcd44593ee845571a1a060fb268e072c"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.13.0/flint_0.13.0_linux_amd64.tar.gz"
      sha256 "a3c94ef7a4d83cc43b3a014fcfdd06106bc1b7e1731e6f41fd7059a742c91a52"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
