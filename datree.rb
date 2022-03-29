# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5-rc/datree-cli_1.1.5-rc_Darwin_x86_64.zip"
    sha256 "8a94caa40046b7f4fe3775528d4d5eed0d3f19ecda4b8a0bb0b303a92cabf95e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.5-rc/datree-cli_1.1.5-rc_Darwin_arm64.zip"
    sha256 "868d4b7561121ac05970a5a697c2235c85a21ebe32156accc17b14f0514ccb59"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5-rc/datree-cli_1.1.5-rc_Linux_x86_64.zip"
    sha256 "2b24f631d66c88d9a39aa9ce3b82b992469b02bfdb2c39574d2188d1340a40ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.5-rc/datree-cli_1.1.5-rc_Linux_arm64.zip"
    sha256 "6d971ba7d02cccb19c3b991e5a6b114c016c2cb0596a2b4d77bf12e65e80e668"
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
      tput init
    EOS
  end
end
