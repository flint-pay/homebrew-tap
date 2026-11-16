class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.2/flint_0.20.2_darwin_arm64.tar.gz"
      sha256 "b54a244cabe17c37c5993caeb98419515f060c6f116ffb0fc08dceebcdfc7b0d"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.2/flint_0.20.2_darwin_amd64.tar.gz"
      sha256 "99d81b826ecb3ce21d148be6a3c2766a986c4a7523dd109e9d235da5f9ffbff6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.2/flint_0.20.2_linux_arm64.tar.gz"
      sha256 "6088b12b76865076650440a4794fa04bda770bc5115f6509747652b7e1512ff7"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.2/flint_0.20.2_linux_amd64.tar.gz"
      sha256 "d6a2fc9628ccd1c8c69359f6bee98cf9231a343436b8eaeb60c98e9952c061ef"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
