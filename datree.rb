# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.14-rc/datree-cli_1.4.14-rc_Darwin_x86_64.zip"
    sha256 "0be236ea917b27581c2fbd7a4e1cc73a5aa815cf3e75f5891e07d307013c534e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.14-rc/datree-cli_1.4.14-rc_Darwin_arm64.zip"
    sha256 "c60d98f00208bda25f2d3609dce13b2807584e2883b5d6187d761ce0393a183f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.14-rc/datree-cli_1.4.14-rc_Linux_x86_64.zip"
    sha256 "3e6a999fba46b128db2df931c75c5b028290513674f322df97cdd1983ab6e408"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.14-rc/datree-cli_1.4.14-rc_Linux_arm64.zip"
    sha256 "2cd60e909d3dd23ff3ebcf1dfdd764451e09a2d41704675424be4bcf22607bc4"
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
