class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.2/flint_0.14.2_darwin_arm64.tar.gz"
      sha256 "fddbdf26645d8a8f189df51d227a522b86f384c0c968165afbba49058893b890"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.2/flint_0.14.2_darwin_amd64.tar.gz"
      sha256 "9d0470f408afa2f6fe6933566e621960c6fe0885967740fb8a7f6b818b4310e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.2/flint_0.14.2_linux_arm64.tar.gz"
      sha256 "712c93a2840588580a9b6a761da89adb2544017f5e7ae0827becb0125533da1a"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.14.2/flint_0.14.2_linux_amd64.tar.gz"
      sha256 "bbbdbb262fd09fe5abd8bdd2938fd8d4195bdcf03e56917a3dc0bee31f4403dc"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
