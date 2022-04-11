# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.2-rc/datree-cli_1.2.2-rc_Darwin_x86_64.zip"
    sha256 "8793615e55b5ecb7c951d35a4c3892d128af274ca9881e111ee8379d99cfc416"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.2-rc/datree-cli_1.2.2-rc_Darwin_arm64.zip"
    sha256 "645632703c8df19b8fd7ecdf49db37d8ac461b89ced0595382e1ab0122b2a52d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.2-rc/datree-cli_1.2.2-rc_Linux_x86_64.zip"
    sha256 "610d44a67da515d2630da199bc2ed413f2daf921f0ed3b313612dfbe83f4b37e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.2-rc/datree-cli_1.2.2-rc_Linux_arm64.zip"
    sha256 "772714bda9c593c22258078c45836c3ba674e22151c8559aab4e6fcfcdab28a0"
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
