class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.0/flint_0.20.0_darwin_arm64.tar.gz"
      sha256 "51c8eb262cc06766be9114b262f1ffeff046d4e4dd436667442c48e1a75cb9db"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.0/flint_0.20.0_darwin_amd64.tar.gz"
      sha256 "f033c988c8f55c26d6130d1b86dbd8b88fc974c3e4a37cbfcd26d4a4b74c9cce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.0/flint_0.20.0_linux_arm64.tar.gz"
      sha256 "7306df2bc308858c632ebc84d105bd2088eb8251bd9e3f64b9b554e83053a5b9"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.0/flint_0.20.0_linux_amd64.tar.gz"
      sha256 "55a0ff26993784dfb40acb9b8d69f8098e72fee1721c4e462c7f8fe5f26bfec2"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
