# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.24-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.24-rc/datree-cli_1.6.24-rc_Darwin_x86_64.zip"
    sha256 "9ede79d2c8f86ef3412b6480cf3504632f2fc265f6cf3900b80c0187b7d56b60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.24-rc/datree-cli_1.6.24-rc_Darwin_arm64.zip"
    sha256 "bdf04ee48c399f2f91158bc531cd6cd654c0c3f0e232e3353d9a825f33f82b39"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.24-rc/datree-cli_1.6.24-rc_Linux_x86_64.zip"
    sha256 "022fa51d43efc599fac8a345fef2b40dfc53ef15ad56c580853efbc2fd75b314"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.24-rc/datree-cli_1.6.24-rc_Linux_arm64.zip"
    sha256 "b296d39ee4f175dbe9bf457867f8f7050e36ba870e470fb2606fe63f052b821e"
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
