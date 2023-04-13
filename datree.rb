# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.65-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.65-rc/datree-cli_1.8.65-rc_Darwin_x86_64.zip"
    sha256 "d66cb54fab64b76fb5922635e3c8353d53f0e380a6e431f42490dcbe645f91fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.65-rc/datree-cli_1.8.65-rc_Darwin_arm64.zip"
    sha256 "237a7a02494ea4c772ffb2f20ebfac8827fd576751d220a4a450e018d0f8db1b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.65-rc/datree-cli_1.8.65-rc_Linux_x86_64.zip"
    sha256 "ddc203585a4b231abde97850ba8c4d0d148bcb3cdcb3cd5133dfb849bce25e43"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.65-rc/datree-cli_1.8.65-rc_Linux_arm64.zip"
    sha256 "e5af3ef9b64f0f65bd511ef170d4ad7f03c6d9ed9bd74aae0ee302c2fd4cfe7a"
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
