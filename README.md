# Flint Homebrew tap

Official Homebrew packages for [Flint Pay](https://withflintpay.com).

## Install the CLI

After the first stable CLI release:

```sh
brew install flint-pay/tap/flint
flint version
```

macOS and Linux are supported on Apple Silicon/ARM64 and x86-64.

## Upgrade

```sh
brew update
brew upgrade flint-pay/tap/flint
```

The [Flint CLI release workflow](https://github.com/flint-pay/flint-cli/blob/main/.github/workflows/cli-release.yml) updates `Formula/flint.rb` for stable releases. Prereleases are available through npm and [GitHub Releases](https://github.com/flint-pay/flint-cli/releases).

Report CLI issues in [flint-pay/flint-cli](https://github.com/flint-pay/flint-cli/issues).
