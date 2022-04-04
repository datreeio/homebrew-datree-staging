# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.19-rc/datree-cli_1.1.19-rc_Darwin_x86_64.zip"
    sha256 "cebf95d8768283322783c1fe4b2de9ecb507b429dc147931298e6a508383c6aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.19-rc/datree-cli_1.1.19-rc_Darwin_arm64.zip"
    sha256 "35d04d85b340778b1b1f337a88a626c35723acc9c92c948b04c64bfe30b3069f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.19-rc/datree-cli_1.1.19-rc_Linux_x86_64.zip"
    sha256 "558f44c6dd984a0a5830014779dba7a3fc34fe1e0f233ee1c00415546a4c5fc8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.19-rc/datree-cli_1.1.19-rc_Linux_arm64.zip"
    sha256 "c3812cde29abfb9df95d3d45769825cfed8c2be224e0f94a91f9c2945e88c282"
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
