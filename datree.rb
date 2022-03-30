# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.8-rc/datree-cli_1.1.8-rc_Darwin_x86_64.zip"
    sha256 "8f2fdfbf338104bb50036c8e65722692bbe2b352c3c2745e518d15da988bae05"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.8-rc/datree-cli_1.1.8-rc_Darwin_arm64.zip"
    sha256 "dcf05a47a164c360b719115b0cab47276c328276a4ef4f3cdcf4030e5570cc17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.8-rc/datree-cli_1.1.8-rc_Linux_x86_64.zip"
    sha256 "f16d6f575686afc80839762084cfaf61d03737056d9e042686a2e21749292a13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.8-rc/datree-cli_1.1.8-rc_Linux_arm64.zip"
    sha256 "03f8e809ed3a544970d54b7dff5e1ed0812f6d68165160239bedbea59dff95a5"
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
