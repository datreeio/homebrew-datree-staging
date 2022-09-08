# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.19-rc/datree-cli_1.6.19-rc_Darwin_x86_64.zip"
    sha256 "1cee7bb3664d7ae04b4b49140ecc5398346f4e83bb7f6fd573340b9a034f4b4d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.19-rc/datree-cli_1.6.19-rc_Darwin_arm64.zip"
    sha256 "8237cc18ee94e38b7610df387b940aac4dc40f92a1450013200eb0d42ce07ffe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.19-rc/datree-cli_1.6.19-rc_Linux_x86_64.zip"
    sha256 "c819fa0f07a37cd553b4313161bf6abbc41038028153d844cae444edd34e222a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.19-rc/datree-cli_1.6.19-rc_Linux_arm64.zip"
    sha256 "481c6bbcbb6f50824dad5f283d6fbf46e6495d4ef9210bead797c046f1ca8f41"
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
