class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.5.0/flint_0.5.0_darwin_arm64.tar.gz"
      sha256 "ca8594566f0af41923e31810076c6fdbf8b6aadec3f549e2208ea9d5cdb2dd34"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.5.0/flint_0.5.0_darwin_amd64.tar.gz"
      sha256 "ee80c99a45da2389a35f53656eb4c5fe0ba6ab735ab7c0fa96cdd8673a475a48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.5.0/flint_0.5.0_linux_arm64.tar.gz"
      sha256 "d3e6c972a9268303c913238e672726addcb9866f3e3873c2727f6f0ac4acbc65"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.5.0/flint_0.5.0_linux_amd64.tar.gz"
      sha256 "b17b534e8eaa0f24c56106de042a6787f1be035331c744f0f74e3351ed31a3b8"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
