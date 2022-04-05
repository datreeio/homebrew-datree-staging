# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Darwin_x86_64.zip"
    sha256 "1e04dc7c671ebb0dfbe0ab6e2d4d961da41da2b014b887704665e7b66354ab3e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Darwin_arm64.zip"
    sha256 "a42d1b0d1afe3f964cdb77b380c9d6bfdc279a276407afec1a16f5a1f19e3bd1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Linux_x86_64.zip"
    sha256 "3e439b35dc9ac0f77619e3013134d339ec9d8bedc34d437b116f547bc65c0347"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Linux_arm64.zip"
    sha256 "202392aa27c3fdc1fcf6b7a91bc065d3a4880ce7477337fdb6d692497265985d"
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
