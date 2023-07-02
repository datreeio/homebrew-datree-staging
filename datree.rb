# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.9-rc/datree-cli_1.9.9-rc_Darwin_x86_64.zip"
    sha256 "7204b4da2fc8dcbf604a5385514293da142911e2a8f192cf1abb53b75862a2e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.9-rc/datree-cli_1.9.9-rc_Darwin_arm64.zip"
    sha256 "30ed88b7dfa1ea3e4dd5efed62a1fef7d6ad090f3490d7b7395103af345e5773"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.9-rc/datree-cli_1.9.9-rc_Linux_x86_64.zip"
    sha256 "bd5686cb84b72aef25776cd429a065e5b40bede3ce74a2ffce7e836e0ac2cd21"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.9-rc/datree-cli_1.9.9-rc_Linux_arm64.zip"
    sha256 "af9857d436b50b2ad8559d2dae90e7036524d1d0ca86041316da224bddd40729"
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
