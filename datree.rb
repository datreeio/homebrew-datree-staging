# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.41-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.41-rc/datree-cli_1.8.41-rc_Darwin_x86_64.zip"
    sha256 "4cf7fc15f819a47f6500648f229220cbe66b26d6308fecbd18b4508bcceef153"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.41-rc/datree-cli_1.8.41-rc_Darwin_arm64.zip"
    sha256 "178926d044aa395901c7fb42fd5b5d7ea38a9017d9d3dea748939013fce6c0b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.41-rc/datree-cli_1.8.41-rc_Linux_x86_64.zip"
    sha256 "b042b71b1611825075b90cbceb05441d5aea2630e2e1370bf75ccbcb6166e615"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.41-rc/datree-cli_1.8.41-rc_Linux_arm64.zip"
    sha256 "361e05213c8a1a9982aff947c687bf745627de0482c491162f96d3d93814e2a0"
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
