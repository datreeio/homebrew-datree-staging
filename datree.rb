# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.79-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.79-rc/datree-cli_0.14.79-rc_Darwin_x86_64.zip"
    sha256 "5fd48f91060412a7c0e58f1b593839295e0be439a5bc75d523ffdb27b78ba5c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.79-rc/datree-cli_0.14.79-rc_Linux_x86_64.zip"
    sha256 "688082673a76eca3d79858ffa64c80d634a773a3e61b5245f0d6d935666317e7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.79-rc/datree-cli_0.14.79-rc_Linux_arm64.zip"
    sha256 "736ecc184548b57aeefbb6bde6298cfa961271cea83fc81ea45037251da15442"
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
