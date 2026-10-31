class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.15.0/flint_0.15.0_darwin_arm64.tar.gz"
      sha256 "4c88dac210efa5f2c97f1506216ec7b943b0f703e01c01633a813881ad269e2b"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.15.0/flint_0.15.0_darwin_amd64.tar.gz"
      sha256 "c8d008bc6b22ea159bee76997cc5a93271c7f16ae5071386dbb443b01937e86c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.15.0/flint_0.15.0_linux_arm64.tar.gz"
      sha256 "ef789827a111078e06a64694fc6531ac9f190b78897149f12258387ed46a5637"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.15.0/flint_0.15.0_linux_amd64.tar.gz"
      sha256 "5a409b2a14ef2c098bb45ecf4b1a211436114a0244ce96b3a5f5cace9d96d0de"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
