# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.48-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.48-rc/datree-cli_0.14.48-rc_Darwin_x86_64.zip"
    sha256 "c6dd8cce25c330993aabd7a015683a60006c0776ca807f37459ab24b572e4aa5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.48-rc/datree-cli_0.14.48-rc_Linux_x86_64.zip"
    sha256 "f9075a30aaab555e57bd696a84060896adf8da5b6e092311dc5390a58b79afa0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.48-rc/datree-cli_0.14.48-rc_Linux_arm64.zip"
    sha256 "46c8e4879fc551c33f19312c92950843cf6bb9e49fb6f0786c24a01bd9dc0602"
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
