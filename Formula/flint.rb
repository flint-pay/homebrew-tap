class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.21.0/flint_0.21.0_darwin_arm64.tar.gz"
      sha256 "3390977fc6c53672d0733ea914c828e9a04088b9fa9e334e379bdcd1431902b5"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.21.0/flint_0.21.0_darwin_amd64.tar.gz"
      sha256 "a40e0a9d98b1ce381787f5fe4e72f0f94d7e1e3945c74ad005807e03ce7b567c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.21.0/flint_0.21.0_linux_arm64.tar.gz"
      sha256 "21521073f17ee2645351723e199bbb3bd49b15077e69152acdf90d2423ffd34c"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.21.0/flint_0.21.0_linux_amd64.tar.gz"
      sha256 "4269e7cdc8718a4526183a471e847ef07d70d8aa91f7150caf8b59db066209c9"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
