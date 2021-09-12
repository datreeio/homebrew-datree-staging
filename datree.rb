# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.12.1-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Darwin_x86_64.zip"
    sha256 "6767ec49b824d648736c7567dd813e5d47ae60d9dac147d06f1b15136cf2ec17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Linux_x86_64.zip"
    sha256 "0361832bc09d6df60e2e387993e4cb936b30c1c6ef527adb09048e87d2c23e6c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.12.1-staging/datree-cli_0.12.1-staging_Linux_arm64.zip"
    sha256 "08264f0f8edd444c546c273058638a68eeff53abf8b31f4879b20bff551f7859"
  end

  def install
    bin.install "datree"
  end
end
