class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.2.0/flint_0.2.0_darwin_arm64.tar.gz"
      sha256 "41e6d0f764ad32e3280df79eb908ac9772c11ea98ddc78973ff07c8c6454e088"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.2.0/flint_0.2.0_darwin_amd64.tar.gz"
      sha256 "32ffd9adf773f524f08df085ac457dc28a43b0da151b4525360db0f0ccb76b5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.2.0/flint_0.2.0_linux_arm64.tar.gz"
      sha256 "d608b1befacfad0de1d9cce09beda78ecef0b54b986573fa899ed1e3939f5e59"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.2.0/flint_0.2.0_linux_amd64.tar.gz"
      sha256 "8b547047153727df19147a8c621325fef3d9829470b89d880c71d734d3cfc157"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
