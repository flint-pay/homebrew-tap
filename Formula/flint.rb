class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.9.0/flint_0.9.0_darwin_arm64.tar.gz"
      sha256 "799ed29da37cdbd76a477164e8e36ef85c42be19cd960b8077b433858eb7208c"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.9.0/flint_0.9.0_darwin_amd64.tar.gz"
      sha256 "4853a2de92b8d04fa9e2813ccf0aa1ae1322e013814b6ee3a9959cb268936c05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.9.0/flint_0.9.0_linux_arm64.tar.gz"
      sha256 "8e1d3896d41bfecebdf22d74e511215bdf4cb546986dc7c4f20f301c1b54fc20"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.9.0/flint_0.9.0_linux_amd64.tar.gz"
      sha256 "c209ab4f7be346430891e6026cc747299a1d1b94e95e5667cf4047ebb2e98b6b"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
