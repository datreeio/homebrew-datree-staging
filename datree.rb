# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.10.5-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Darwin_x86_64.zip"
    sha256 "6ffc5c212c6fae5e1e39ae0a13dc08bd9131f408aa360907a19f39e2ec714372"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Linux_x86_64.zip"
    sha256 "bdc02feac96e3414343836efe92e0767b59d32b5977ada3dc4be2ad246581e4d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Linux_arm64.zip"
    sha256 "7afa7a97cc2ba96f4c43e782d2a5133b1df184cc8b53fe1450eb3df9c4ed1d6f"
  end

  def install
    bin.install "datree"
  end
end
