# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.64-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.64-rc/datree-cli_0.14.64-rc_Darwin_x86_64.zip"
    sha256 "69462a003e38d30187cadc698e8e512376034080235bc0184bf319b7bf4a76a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.64-rc/datree-cli_0.14.64-rc_Linux_x86_64.zip"
    sha256 "79af85bf25b33da618a7a21132d94d558bdc998e165a85842bc31511b739ff1d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.64-rc/datree-cli_0.14.64-rc_Linux_arm64.zip"
    sha256 "1d3de7ec7b155e6dc2003e3de5e1795a60a01dff0cf974d96c70f9f7d09d1b2c"
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
