class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.12.0/flint_0.12.0_darwin_arm64.tar.gz"
      sha256 "56fe9e86d869299f08811ecc0441cf34b80d7df7bdfe7cb1fbb42a90e5fd5bfb"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.12.0/flint_0.12.0_darwin_amd64.tar.gz"
      sha256 "2ed9a0e8b01620e5f8e6615450a0d01706600afdac4d583838355ef57bae57a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.12.0/flint_0.12.0_linux_arm64.tar.gz"
      sha256 "d3dee5d4dce3860579a0a7d6497ed5d39b636b30cf12b3e859ad8af11690b426"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.12.0/flint_0.12.0_linux_amd64.tar.gz"
      sha256 "9d746a5326209c191fd3c1734aed9ab3f3fd783d37887c8899e728f4af0e30c4"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
