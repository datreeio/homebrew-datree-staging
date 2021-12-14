# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.70-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.70-rc/datree-cli_0.14.70-rc_Darwin_x86_64.zip"
    sha256 "b31d3d4b173d7ee512c66c2abd1f9c2a7192109d6b0ad164036231aad1bec384"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.70-rc/datree-cli_0.14.70-rc_Linux_x86_64.zip"
    sha256 "88edd5806a679efb764bcdfdcefc83a168286dc630c24335401a45d4e5eddde7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.70-rc/datree-cli_0.14.70-rc_Linux_arm64.zip"
    sha256 "036bd58bce5d20730dab2210a8854fcdc1cfc7bbfbcacddda13de38582587af8"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
