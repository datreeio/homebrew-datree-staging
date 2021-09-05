# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.10.6-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.10.6-staging/datree-cli_0.10.6-staging_Darwin_x86_64.zip"
    sha256 "115c07713094e2d3a9e3c7bb0985063641a4d853aa3dfc7ea763e60b0861b729"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.10.6-staging/datree-cli_0.10.6-staging_Linux_x86_64.zip"
    sha256 "957c347f372f3164d3e546e4a0704b54fae9400aa8f2de14c9264ffec406cca8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.10.6-staging/datree-cli_0.10.6-staging_Linux_arm64.zip"
    sha256 "6f7bdbbb4f982373659c84a094ddcbd730d6cb8e1ea03062f0e979a70f2bc1d2"
  end

  def install
    bin.install "datree"
  end
end
