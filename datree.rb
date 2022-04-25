# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.3-rc/datree-cli_1.3.3-rc_Darwin_x86_64.zip"
    sha256 "1b2cbe2ad3c33587226610c9b42d6899cc56311d51897121c894e03eb4e33362"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.3-rc/datree-cli_1.3.3-rc_Darwin_arm64.zip"
    sha256 "aabeb0400d3b504f6b19bfe395ed5b68bdfa77097e7aedd351258b59787cf9c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.3-rc/datree-cli_1.3.3-rc_Linux_x86_64.zip"
    sha256 "ca1abb7cc29d9a88cf7b0634572b4f5cae4c0802aea622a798062fc1036b5944"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.3-rc/datree-cli_1.3.3-rc_Linux_arm64.zip"
    sha256 "3ea2004ff9f6b06fedf3e82e48df88103e225607664631e7766bc5854c9d41ae"
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
