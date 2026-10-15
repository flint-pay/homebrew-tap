class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.6.0/flint_0.6.0_darwin_arm64.tar.gz"
      sha256 "5b32b9d014dc1097962e83e3c2bda78907e0cb1bb9d216ecb977155b697902b7"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.6.0/flint_0.6.0_darwin_amd64.tar.gz"
      sha256 "48b97e5d2cee39ab90bad047efa525d5bd795166b9e01fcac5511958e7b73f7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.6.0/flint_0.6.0_linux_arm64.tar.gz"
      sha256 "37b3a159021dc47bc7bbb64f0e44237c40e28c0e23ad4e041813a08654d26bf6"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.6.0/flint_0.6.0_linux_amd64.tar.gz"
      sha256 "00b9da4d981a39a8893e9b386813ebc0fdda888e3a051e3c3bb7449d9d6da45e"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
