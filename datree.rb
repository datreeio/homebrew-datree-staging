# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.17-rc/datree-cli_0.16.17-rc_Darwin_x86_64.zip"
    sha256 "cf6e6c80e04cec256c82182d9ef0299c0228bb7f9004d461b3f00f005b1c72ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.17-rc/datree-cli_0.16.17-rc_Darwin_arm64.zip"
    sha256 "58e16c8d76e077e04b32c0120f85b5968c5b2e46ee55f97ba00ff49632fefb8a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.17-rc/datree-cli_0.16.17-rc_Linux_x86_64.zip"
    sha256 "26a0edb268fbfcdd3e36e06114fc77da24ff40da04737a9183725da6758bd29a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.17-rc/datree-cli_0.16.17-rc_Linux_arm64.zip"
    sha256 "6ff4b30f3fc7b9e16e6e17b66045a00b840ee60f093c4aff4804f4ccf6048f0b"
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
