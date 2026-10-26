class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.11.0/flint_0.11.0_darwin_arm64.tar.gz"
      sha256 "7d599acd36515e129e22cbc568e703a4cbc0bd6d1eae1f6bb1d13c23770a5f19"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.11.0/flint_0.11.0_darwin_amd64.tar.gz"
      sha256 "902480d4ba007b610368688d58001f2f7e831ddb9e9668ffcf4e06b5bf3e8557"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.11.0/flint_0.11.0_linux_arm64.tar.gz"
      sha256 "9d4a132ee49b4bec7b76e2c2ac795dd55bfdbfa53dc227d6848701b9473c9562"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.11.0/flint_0.11.0_linux_amd64.tar.gz"
      sha256 "dcca37506824261b7b268ef4ef8a0b581a70a093545d8edf37e55946b6ae7bfb"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
