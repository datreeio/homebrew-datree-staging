# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.78-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.78-rc/datree-cli_0.14.78-rc_Darwin_x86_64.zip"
    sha256 "25ef6fabff977321a6973702cc1857a4a6f7039acd953bc9e60ffb2bf9f95cf5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.78-rc/datree-cli_0.14.78-rc_Linux_x86_64.zip"
    sha256 "413c2ee9bb27edc2bea12c84ac2db8f473c81bae6c09d1efd3d4cd9e8f130e0c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.78-rc/datree-cli_0.14.78-rc_Linux_arm64.zip"
    sha256 "7ca64432b58639f2e3a2e866fdb3fa95be21ab3582fdd07343f2d8c1b881a1d9"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
