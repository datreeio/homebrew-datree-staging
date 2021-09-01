# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.9.4-DAT-3420-remove-find-replace"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.9.4-DAT-3420-remove-find-replace/datree-cli_0.9.4-DAT-3420-remove-find-replace_Darwin_x86_64.zip"
    sha256 "fa49097e50afd57d88ce867c6a0a0a54f93e7a08f41b7415b2d1018a36483b57"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.9.4-DAT-3420-remove-find-replace/datree-cli_0.9.4-DAT-3420-remove-find-replace_Linux_x86_64.zip"
    sha256 "d87322bd69a53b2ee8be2dcf66461e8e04ecc511f68dc8eb165d54a5cc797995"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.9.4-DAT-3420-remove-find-replace/datree-cli_0.9.4-DAT-3420-remove-find-replace_Linux_arm64.zip"
    sha256 "099373a0d82638e7b6ea36fb9ddda2eb2576bb35801384811857e102501fc2ad"
  end

  def install
    bin.install "datree"
  end
end
