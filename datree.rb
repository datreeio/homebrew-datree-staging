# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.10.5-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Darwin_x86_64.zip"
    sha256 "cd0c283088981a6eb90350a3dd30f300dee88aadd44b15c71853cd113be6f030"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Linux_x86_64.zip"
    sha256 "4a8d3dccc04e4cf1d6c3da8200359cbdc359e2532c41107ecf7596f3ec924608"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.10.5-staging/datree-cli_0.10.5-staging_Linux_arm64.zip"
    sha256 "9d334ed5c5a240c85e300128d23baaad032d47c91a6dd09804d3817b215d4627"
  end

  def install
    bin.install "datree"
  end
end
