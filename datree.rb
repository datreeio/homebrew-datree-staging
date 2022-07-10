# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.28-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.28-rc/datree-cli_1.5.28-rc_Darwin_x86_64.zip"
    sha256 "cd8add30b8e8636888bea2ea7ec9f7d4c5febebaa36634dcccdac192d8f0dd0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.28-rc/datree-cli_1.5.28-rc_Darwin_arm64.zip"
    sha256 "d64ab21159e289d8c114e8031988af4ef3922393ef14f4abb5a0d8fe53422ddc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.28-rc/datree-cli_1.5.28-rc_Linux_x86_64.zip"
    sha256 "c48d4a96bc0db1d4c02bd9a1307372ca5236da6e0696766a943db5177ce335e0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.28-rc/datree-cli_1.5.28-rc_Linux_arm64.zip"
    sha256 "91044b08eeca39e842c299e15840f11e814f962f2e15e8baa62a395f75f5f95d"
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
