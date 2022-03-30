# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10-rc/datree-cli_1.1.10-rc_Darwin_x86_64.zip"
    sha256 "3c9aa9d18f48747423967f0ee3ee539d7991d1324ab29cd27df738536ccccc1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.10-rc/datree-cli_1.1.10-rc_Darwin_arm64.zip"
    sha256 "d2c73afaa6ccefb37d7974ec6ee55e3c12932698ca0bd94a3f36f45337e0df75"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10-rc/datree-cli_1.1.10-rc_Linux_x86_64.zip"
    sha256 "1e7c3fdfa251d4628e53b354a50d76b3e8654648f33e557c9b8702988a460897"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.10-rc/datree-cli_1.1.10-rc_Linux_arm64.zip"
    sha256 "3e8285768d1acb8784f162d0af9014ff52460d1f15622bc304126b1f91dd19d8"
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
