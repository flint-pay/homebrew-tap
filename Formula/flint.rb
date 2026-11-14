class Flint < Formula
  desc "Flint Pay command-line interface"
  homepage "https://withflintpay.com"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.19.0/flint_0.19.0_darwin_arm64.tar.gz"
      sha256 "0ef88aa90056587feb9650900313126aa24d6b041f26a10fb99919bc3361d113"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.19.0/flint_0.19.0_darwin_amd64.tar.gz"
      sha256 "b4fde0cf77c500a3f92473a55c559b3943c881d1b32d56b268f7eafc2cf9416a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.19.0/flint_0.19.0_linux_arm64.tar.gz"
      sha256 "f8594e9432db0be6a09e691b0e0503c3dc2377c2013a573c67c01b7b3d5f8df5"
    else
      url "https://github.com/flint-pay/flint-cli/releases/download/cli%2Fv0.19.0/flint_0.19.0_linux_amd64.tar.gz"
      sha256 "835350b8d8922189d11892bd55fcb2ae8e327eff66a31d9d67bb6e2657d47e4e"
    end
  end

  def install
    bin.install "flint"
  end

  test do
    system "#{bin}/flint", "version", "--output", "json"
  end
end
