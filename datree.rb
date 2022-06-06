# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.1-rc/datree-cli_1.5.1-rc_Darwin_x86_64.zip"
    sha256 "68b321406e65ead136c5c8d36fab886ea0c502848cd1bb9e97b9b2cebb7a2765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.1-rc/datree-cli_1.5.1-rc_Darwin_arm64.zip"
    sha256 "7e94a5ff78e3fa21778817cf91e26fdaa0d2156b87af2a56fdbe5fe5812bcfa4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.1-rc/datree-cli_1.5.1-rc_Linux_x86_64.zip"
    sha256 "ffdf40d049e8fc39c311fec611ee495c92b9bda3d3c3e6c5ba91ff4af35bc031"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.1-rc/datree-cli_1.5.1-rc_Linux_arm64.zip"
    sha256 "c8f5c3568cbe67f4c20cdb6942e3937ff59a6e7e03cefaef05cd450ddb98b087"
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
