# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.14-rc/datree-cli_1.1.14-rc_Darwin_x86_64.zip"
    sha256 "246c32dbc52b99d4a7cb4c528a277e03bca0cfb2e0425da2a68223ccd5b109e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.14-rc/datree-cli_1.1.14-rc_Darwin_arm64.zip"
    sha256 "e5df295ab696f11648cb5a5ca65a31a942dd4733cd78776368a02b5361d3200b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.14-rc/datree-cli_1.1.14-rc_Linux_x86_64.zip"
    sha256 "e37bc0584250d458dcd45bef38006bec2a8eaf8fb0af46df41a8bbaff6a82dca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.14-rc/datree-cli_1.1.14-rc_Linux_arm64.zip"
    sha256 "da4ef39bba9e68d856f281dc1291c0fca1f151d67f112733366bb135ae3f6948"
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
