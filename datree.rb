# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.11.0-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.11.0-staging/datree-cli_0.11.0-staging_Darwin_x86_64.zip"
    sha256 "b44cfa8861e616bd90ecc9aa50c289e7c3c61a4542e3510c9024bbe9d3b43eb1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.11.0-staging/datree-cli_0.11.0-staging_Linux_x86_64.zip"
    sha256 "3b77ea84eeec74177ed2c04016c29e7c4fef0bbe960dbf2905c66178b5bba856"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.11.0-staging/datree-cli_0.11.0-staging_Linux_arm64.zip"
    sha256 "cf81c9bf556385bcdd571bff29183ae6ec74e4aa709517293ff6b93794784c91"
  end

  def install
    bin.install "datree"
  end
end
