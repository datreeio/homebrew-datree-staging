# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.12.0-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.12.0-staging/datree-cli_0.12.0-staging_Darwin_x86_64.zip"
    sha256 "337477d6d976b492e8e6055254c088c8d49124cd6faa0a329f41889f8a84ae78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.12.0-staging/datree-cli_0.12.0-staging_Linux_x86_64.zip"
    sha256 "cdcb0f1bf7f287b013e8f6a8d06e2d5f0ff96f3b25a4d9795f891e67ce12a952"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.12.0-staging/datree-cli_0.12.0-staging_Linux_arm64.zip"
    sha256 "d6b03ee55afd914c818c4e1012226714dab4bed2dea0b7edf012bd26a3827d99"
  end

  def install
    bin.install "datree"
  end
end
