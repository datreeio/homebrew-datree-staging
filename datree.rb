# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.33-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.33-rc/datree-cli_1.4.33-rc_Darwin_x86_64.zip"
    sha256 "6ffc98986f4c1ade5cfcc8717da82fdc1a4708a4ca967a937b3bda6d64c181df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.33-rc/datree-cli_1.4.33-rc_Darwin_arm64.zip"
    sha256 "5a83848ac4770ca013f0ec682b0f30ac6d275c0bd50a2d6edd121e78392185cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.33-rc/datree-cli_1.4.33-rc_Linux_x86_64.zip"
    sha256 "deffad65c7fb631815df67c76e8dc4daaaa9d07a91c884643d919f3259a1e84f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.33-rc/datree-cli_1.4.33-rc_Linux_arm64.zip"
    sha256 "2a71b61e1ccf50453fb534c0baaa6d20a4fb18b47c81a085dcff3cf9b5020b88"
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
