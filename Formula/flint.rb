class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.1/flint_0.20.1_darwin_arm64.tar.gz"
      sha256 "7e0139a5d776be67b9013a97e41e78318ae4e2d05bbb65712fb7cdcfa49ca7a2"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.1/flint_0.20.1_darwin_amd64.tar.gz"
      sha256 "4dd6441b0e949ae151d40cf5cd2560b0547968227447f0332a2a18fb1a80c130"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.1/flint_0.20.1_linux_arm64.tar.gz"
      sha256 "4dee51efe4af6480531a04d92cd891ea3652fcb0c1c34533c40c6dfe9fc2ab72"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.1/flint_0.20.1_linux_amd64.tar.gz"
      sha256 "31d82ee87b75e5e9f5515155c0cebc236994ad18e61720ab3c3254f93b5f0867"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
