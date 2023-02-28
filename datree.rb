# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.31-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.31-rc/datree-cli_1.8.31-rc_Darwin_x86_64.zip"
    sha256 "2eb9e59b06c1f512b68f5258febcb422efd9507f870a96cb46053437f08c93b6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.31-rc/datree-cli_1.8.31-rc_Darwin_arm64.zip"
    sha256 "eb294e11dbaada2f41230d86f7a02ff689e1a382b72be89cd4363b17327cc2e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.31-rc/datree-cli_1.8.31-rc_Linux_x86_64.zip"
    sha256 "689f4f9172421313d8f2f788bd876d25958c5e7a8a5f217e056b448ba63213c9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.31-rc/datree-cli_1.8.31-rc_Linux_arm64.zip"
    sha256 "07e5fe21fecc3ddcc225ecc27b08e820ba5a624fcd5008b95cd2f2111c415509"
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
