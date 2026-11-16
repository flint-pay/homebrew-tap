class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.20.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.3/flint_0.20.3_darwin_arm64.tar.gz"
      sha256 "a5fecf338292eeffb1a8403200d434e818eec2f8968d4ab432ad7ff90c62f60d"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.3/flint_0.20.3_darwin_amd64.tar.gz"
      sha256 "c1fc37f42eeeb16f00673b753b9e7b5ff93a411994f6cf54cccf12a2ce967f62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.3/flint_0.20.3_linux_arm64.tar.gz"
      sha256 "4d2ec3527739d8a65cc7c50a1ff73e2b64b713ca63768f63e96ee98505cef790"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.20.3/flint_0.20.3_linux_amd64.tar.gz"
      sha256 "82ee8eb54504fc21a6e4041122306266846fbb802e54b942a67ab9c8fdcded60"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
