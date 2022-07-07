# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.26-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.26-rc/datree-cli_1.5.26-rc_Darwin_x86_64.zip"
    sha256 "849665d0796803e90b22dcd5dc38c6695c57c609127b465d689a5bcacef4fe33"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.26-rc/datree-cli_1.5.26-rc_Darwin_arm64.zip"
    sha256 "2be7a13c31693a1640ffe2351f6c30d57cd2658bc169c208848a142be435b141"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.26-rc/datree-cli_1.5.26-rc_Linux_x86_64.zip"
    sha256 "32eede4ee5bfd27094c8eae00363caefe10212487059b58ffaf77d2bf0ab21d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.26-rc/datree-cli_1.5.26-rc_Linux_arm64.zip"
    sha256 "b927889ac04dc860c12051d802904f4832792ba9468317cd316f216a84d41473"
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
