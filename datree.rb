# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.19-rc/datree-cli_0.16.19-rc_Darwin_x86_64.zip"
    sha256 "4c64461b1a5dc424ffa205ac9c5990f7798c9487c7d00d594b5a89518aa9f5aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.19-rc/datree-cli_0.16.19-rc_Darwin_arm64.zip"
    sha256 "40eeffb5f9af5d81c8f035d05784ee6edbf8d55f868eb873ccbd7554ec25c049"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.19-rc/datree-cli_0.16.19-rc_Linux_x86_64.zip"
    sha256 "c7d09fb7317db3e5fab6e3cbd45a6babd760eed190b8e3539ec235da15d978a1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.19-rc/datree-cli_0.16.19-rc_Linux_arm64.zip"
    sha256 "5d90fec9d7deae6e223963153675363faffba87bf07ba7c7f9a7910e1293b47c"
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
      tput init
    EOS
  end
end
