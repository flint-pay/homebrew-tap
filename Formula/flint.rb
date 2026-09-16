class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.0/flint_0.3.0_darwin_arm64.tar.gz"
      sha256 "04bb0e2eddfc29a4f9e1363d85a40dc1906a40f8b28d5c28935e8ed68f6a5504"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.0/flint_0.3.0_darwin_amd64.tar.gz"
      sha256 "d64ceef4ac4ce7d7a624118a59b40f74602ee6afd73385bb1bdb3ac606b71e94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.0/flint_0.3.0_linux_arm64.tar.gz"
      sha256 "ebbddfee5700f380d9318543f544ce1c29a06f001116c9468f016eb460aa2b62"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.3.0/flint_0.3.0_linux_amd64.tar.gz"
      sha256 "a1570026cdfd51c4b6bf30f1270668bf0a87e30b7188e158c3122ac654e01a05"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
