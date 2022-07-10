# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.29-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.29-rc/datree-cli_1.5.29-rc_Darwin_x86_64.zip"
    sha256 "24aaa7f4b78ec8410acd35c4c8a87071340d0be66c7b641c35ee250dfc909ad5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.29-rc/datree-cli_1.5.29-rc_Darwin_arm64.zip"
    sha256 "02edcfb10dbe037e2db11b906467c84bced7924c0eee3cfdc417c81937cc8b0b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.29-rc/datree-cli_1.5.29-rc_Linux_x86_64.zip"
    sha256 "f104457f381a779f2e99732f16a005076578a1440afb68a7c7048e7fe54e90d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.29-rc/datree-cli_1.5.29-rc_Linux_arm64.zip"
    sha256 "409cb0ab675f0ed14ecc5a271347913399771e2a2461ce18a071aa2b1c69b325"
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
