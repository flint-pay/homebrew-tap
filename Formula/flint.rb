class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.8.0/flint_0.8.0_darwin_arm64.tar.gz"
      sha256 "9d512ad52c8c36dc317051ef59670eb591f10cda336d0625619b677a8b0981e4"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.8.0/flint_0.8.0_darwin_amd64.tar.gz"
      sha256 "ee64d4add222a76e70fe008b98d98570a0eb36d66a6da745f92d5bcb7e2de665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.8.0/flint_0.8.0_linux_arm64.tar.gz"
      sha256 "9efb62c52b85092387fb17e5166859782dc78c65010a34cc6e8e8a71b0f10fc1"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.8.0/flint_0.8.0_linux_amd64.tar.gz"
      sha256 "ee8dabf487843ed99aa133cf9cc363df7e58b0a849b2a9dfe7ceea585f56a060"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
