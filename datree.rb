# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.19-rc/datree-cli_1.9.19-rc_Darwin_x86_64.zip"
    sha256 "fc16f8bb886374aa94228d029463bfe3dee011189fcdcb8fdf14c679e918e553"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.19-rc/datree-cli_1.9.19-rc_Darwin_arm64.zip"
    sha256 "fc06abf65596366c1d2f5a27943fcd3fe45fa6ebacc2789f1dee16f0964da177"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.19-rc/datree-cli_1.9.19-rc_Linux_x86_64.zip"
    sha256 "a21080a45f5049e644da2715e2ae5ea1f0b9876e77aa09ede48827806d6c5f9e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.19-rc/datree-cli_1.9.19-rc_Linux_arm64.zip"
    sha256 "750d131337804d55a610daee6d6bd6880604ea21f124ce37e13c2f0d8f3ce612"
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
