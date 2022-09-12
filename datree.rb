# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.21-rc/datree-cli_1.6.21-rc_Darwin_x86_64.zip"
    sha256 "f694af7d2ab033c3b5757c758e22a647b850a56810d5d25e80fe4db701634172"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.21-rc/datree-cli_1.6.21-rc_Darwin_arm64.zip"
    sha256 "4ffefbf10481af103f1178f366ead6bb6e5c581d52455fa61a8d5a9eeaeb1c0a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.21-rc/datree-cli_1.6.21-rc_Linux_x86_64.zip"
    sha256 "b2f82e707132011b9e43470aad5999998d4493bd4d41209177136fc88d098e04"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.21-rc/datree-cli_1.6.21-rc_Linux_arm64.zip"
    sha256 "f152eacc8e556edd9735a7d6e2dc3431299773f446cf3615393e164225992e33"
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
