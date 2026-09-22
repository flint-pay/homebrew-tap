class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.4.0/flint_0.4.0_darwin_arm64.tar.gz"
      sha256 "233c4c3eb211f4141dbb368ad0d55ae2d2c5a824e0a2b9ebced0e053981e082e"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.4.0/flint_0.4.0_darwin_amd64.tar.gz"
      sha256 "31848b281b71c745cfe4f29685d0e23b1821c1f9c8b40093437cc83c43abde24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.4.0/flint_0.4.0_linux_arm64.tar.gz"
      sha256 "fc254af17a09c48ebd776e4df09d0daabbc632321259dfa58883898a6316413a"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.4.0/flint_0.4.0_linux_amd64.tar.gz"
      sha256 "4ca105454e994238abf180bbe00b3bacb8ccb1e50027017a82a90a38e5cfbc66"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
