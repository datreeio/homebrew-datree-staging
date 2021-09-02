# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.10.2-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.10.2-staging/datree-cli_0.10.2-staging_Darwin_x86_64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.10.2-staging/datree-cli_0.10.2-staging_Linux_x86_64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.10.2-staging/datree-cli_0.10.2-staging_Linux_arm64.zip"
    sha256 ""
  end

  def install
    bin.install "datree"
  end
end
