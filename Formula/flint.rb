class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.16.0/flint_0.16.0_darwin_arm64.tar.gz"
      sha256 "be2b8c7e82c50e53f4bca37c2be2a6f5e209baabab63453837c881893c8d2bc2"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.16.0/flint_0.16.0_darwin_amd64.tar.gz"
      sha256 "082d8253754d20f6d66fade6303fd0c8521e996c91ab43c648dbec0bb1ee8ff8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.16.0/flint_0.16.0_linux_arm64.tar.gz"
      sha256 "aaea365e49990ac6702bb76f7dc0704ebd7a987510f7c19a71787b7f7661b453"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.16.0/flint_0.16.0_linux_amd64.tar.gz"
      sha256 "894501eafc6c0e2728a0d0803e5065a5bed962645d1a399356a350970c2b9a04"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
