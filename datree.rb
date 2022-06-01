# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.39-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.39-rc/datree-cli_1.4.39-rc_Darwin_x86_64.zip"
    sha256 "ea40e29415f2b5a90447cab3021253f1b51f54ea086f6010a5255e279b45dcc4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.39-rc/datree-cli_1.4.39-rc_Darwin_arm64.zip"
    sha256 "fa5c15ea47a55cf6d0c550292407d55293d3f772d24cf8c91153e2e9b517fba2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.39-rc/datree-cli_1.4.39-rc_Linux_x86_64.zip"
    sha256 "ab51d4b53f996c42ce082b6e8aa45369d9c8cfdd71cbc620fe5476ac04b5270b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.39-rc/datree-cli_1.4.39-rc_Linux_arm64.zip"
    sha256 "c79b1bef30380d64ee93497a76216771f072a992272636836b58e391e2a0d9b3"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
