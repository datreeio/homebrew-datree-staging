# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.8-rc/datree-cli_1.6.8-rc_Darwin_x86_64.zip"
    sha256 "b81ad091eec401f00b651790f27a85cd21a30f504b5367a3fc23c8ac3d6b5765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.8-rc/datree-cli_1.6.8-rc_Darwin_arm64.zip"
    sha256 "59ce55cd87c99732f6bce101c0607a0b69cc63da4395e9381670e9a49eb07e22"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.8-rc/datree-cli_1.6.8-rc_Linux_x86_64.zip"
    sha256 "d93675522ceb34eb44f85286d379bc919da0a42c72fdec9393e7a424609e7b22"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.8-rc/datree-cli_1.6.8-rc_Linux_arm64.zip"
    sha256 "a21627847c63e0c53106cc392400efb7e5eb55979493e6b9e1e4c11f0b34b254"
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
