class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.17.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.1/flint_0.17.1_darwin_arm64.tar.gz"
      sha256 "e45b986effa227f1a0fd03238f35969603a486e2cc5a2a8067afc1af37c3b92b"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.1/flint_0.17.1_darwin_amd64.tar.gz"
      sha256 "c59bdf846a72e9defe4fdd791540ec4c6112a5ab9ee474e3d362739bbd85f971"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.1/flint_0.17.1_linux_arm64.tar.gz"
      sha256 "0aa2f266f4d53cd29a7d6c0ca903606489c5a4057b361fb03662298d60a27f78"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.17.1/flint_0.17.1_linux_amd64.tar.gz"
      sha256 "c8bd68dc076425e5e1fe834a7709018673a774469d06a5947e50fcfcb6f1cdc5"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
