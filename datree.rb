# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.24-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.24-rc/datree-cli_1.1.24-rc_Darwin_x86_64.zip"
    sha256 "be40db86a843045d55dc50add3064b287d5207c2a04345fd4e78f90a1077f6df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.24-rc/datree-cli_1.1.24-rc_Darwin_arm64.zip"
    sha256 "a0d1893030546334ede5b1546d87abd6c0031f6551eef7d538196966b578a097"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.24-rc/datree-cli_1.1.24-rc_Linux_x86_64.zip"
    sha256 "65339e5b9469059253c6dfc0ddfe5569ffabe4ec9a5047a9b4a1cb6c8647e6f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.24-rc/datree-cli_1.1.24-rc_Linux_arm64.zip"
    sha256 "36c932d7fe51e01bf0fcf66a5bdb6fa61f6abd0cc7a75c53a233261f3378c93c"
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
