# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.48-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.48-rc/datree-cli_1.8.48-rc_Darwin_x86_64.zip"
    sha256 "b95dbdabb8c1ac822ef51af40e82da7c0dff8a4986747e0ce59f54a8e6f87eed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.48-rc/datree-cli_1.8.48-rc_Darwin_arm64.zip"
    sha256 "312901dafadcf9298e7737bff2dc9c1fe697ab36676c572417a0671a63c84333"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.48-rc/datree-cli_1.8.48-rc_Linux_x86_64.zip"
    sha256 "c6a9c8ca91fde0469dabb2e812739cc5a46f9d5cb1e7df8cd752347086d4ce85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.48-rc/datree-cli_1.8.48-rc_Linux_arm64.zip"
    sha256 "1ce221e636cfa0ea7acddb18d450422d0bdff18530aecc6d8c934fb22ddfcdb9"
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
