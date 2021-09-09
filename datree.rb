# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.12.1-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Darwin_x86_64.zip"
    sha256 "92714e8ccbc15fe4f6b98a53dda6448af0d7fd82b4f82d2b3ec635069d93224a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Linux_x86_64.zip"
    sha256 "2474de6dc4ce25bbb2c90f0f64e67faec338ac0d6f66f38ddae2598c2843ec05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Linux_arm64.zip"
    sha256 "bba364eadc5d7d5b16dd0619fed57dc5a6ec217e8a775858d68363c8be1da4bf"
  end

  def install
    bin.install "datree"
  end
end
