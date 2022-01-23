# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.7-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.7-rc/datree-cli_0.15.7-rc_Darwin_x86_64.zip"
    sha256 "b58b1d8e083590728ae300331f03c6d8b36ef62456c60303d149c63641c5722d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.7-rc/datree-cli_0.15.7-rc_Linux_x86_64.zip"
    sha256 "da7668a7440f335a1ff1982eaed8fce2a100ab901e5ae264bdc97c8fea46afca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.7-rc/datree-cli_0.15.7-rc_Linux_arm64.zip"
    sha256 "0b6fb1acb201c26f954f7a67e99c4632ab82206bd28caf65763f5896d0dd1198"
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
