# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.11-rc/datree-cli_1.6.11-rc_Darwin_x86_64.zip"
    sha256 "1c5e51f5f849f4d399c909f5999cc80c8d462c4ec48df3b5e9ce05f9255e199d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.11-rc/datree-cli_1.6.11-rc_Darwin_arm64.zip"
    sha256 "4e3e7f39e674e587bc6068522db6732865812fd7ccc8ada5fc645f55a78cb1ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.11-rc/datree-cli_1.6.11-rc_Linux_x86_64.zip"
    sha256 "1d7a28cfa8423247e5f5c3fa4eb830c48f1c16f808ffcff356be908829d079b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.11-rc/datree-cli_1.6.11-rc_Linux_arm64.zip"
    sha256 "65bbdf72ce0602cfdfa65db23355c202e24990e8f785139a70b09aeeff6574ee"
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
