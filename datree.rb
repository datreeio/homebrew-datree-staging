# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.14-rc/datree-cli_1.5.14-rc_Darwin_x86_64.zip"
    sha256 "5ef084ad3947e25e021d4556b92046e170470148ecc5818d78d3e7339f7faf08"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.14-rc/datree-cli_1.5.14-rc_Darwin_arm64.zip"
    sha256 "74263520db0ced1ffe1a4c76d808243e90d99ddd8bc6c9c1259ac82c64474232"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.14-rc/datree-cli_1.5.14-rc_Linux_x86_64.zip"
    sha256 "a0ea702c820aef92eb2a753e0da4c09c57a0729651e94fb9af40eca46033c53c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.14-rc/datree-cli_1.5.14-rc_Linux_arm64.zip"
    sha256 "105da3f301245a0e250289a3b341a05021766aa8956e6edd55c0ef566ce82073"
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
