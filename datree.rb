# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.0-rc/datree-cli_1.6.0-rc_Darwin_x86_64.zip"
    sha256 "c2b2a9d85485b21fdd0af8ec00c99572834821466869aacbe3cd95f39e4a0393"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.0-rc/datree-cli_1.6.0-rc_Darwin_arm64.zip"
    sha256 "2269fb4af2970e1fe206d53558245738eb9a14580e8690a1b0fdc63a3da1421c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.0-rc/datree-cli_1.6.0-rc_Linux_x86_64.zip"
    sha256 "16277fe0c7530736430129c2e083fa6f82353367b1fc1db81450bc38f5fe1a70"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.0-rc/datree-cli_1.6.0-rc_Linux_arm64.zip"
    sha256 "1c2159af4aad692be2f7c1f7041194ecd92e890a61e1957f82c4320e81db1350"
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
