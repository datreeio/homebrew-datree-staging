# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.32-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.32-rc/datree-cli_1.6.32-rc_Darwin_x86_64.zip"
    sha256 "ebdcb0c6571a51bc231749495e90f15004b2e91b4265673468bdd349152cf134"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.32-rc/datree-cli_1.6.32-rc_Darwin_arm64.zip"
    sha256 "0b7ca61cd4b8c23acda639828a6f4ff9efb65d728a32a3d4bd89124e8be244b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.32-rc/datree-cli_1.6.32-rc_Linux_x86_64.zip"
    sha256 "67dc4bedf4962abcee41395f8635d041c8c1ed271502c82b27cfc0341315ded9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.32-rc/datree-cli_1.6.32-rc_Linux_arm64.zip"
    sha256 "5fc08fffde6f947e3afc479e21955bc2623940663688dbb77e7ae8c12f5f1952"
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
