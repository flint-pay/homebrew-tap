class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.10.0/flint_0.10.0_darwin_arm64.tar.gz"
      sha256 "c54ce14b7e4eb902bd0cf5762da6599096b7afc63264b50b653d331f933f4774"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.10.0/flint_0.10.0_darwin_amd64.tar.gz"
      sha256 "e7137b0a73a1bfbf376612375388a1a8a7ebc1e5419d3e9171f9afa70a5c6f73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.10.0/flint_0.10.0_linux_arm64.tar.gz"
      sha256 "e90ad4a97e592757873fb43ab825df1cb367390a9934c3f0c6fbc070e378aeb2"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.10.0/flint_0.10.0_linux_amd64.tar.gz"
      sha256 "d81f8dca3aede35d2cc552e86e799a6cce68bec756848fec83ff51789d3beaee"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
