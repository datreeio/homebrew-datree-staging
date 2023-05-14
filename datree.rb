# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.1-rc/datree-cli_1.9.1-rc_Darwin_x86_64.zip"
    sha256 "15afdffe3aef02152d700e754850ef1bae1fabd169ed53616e9c60d512e4f358"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.1-rc/datree-cli_1.9.1-rc_Darwin_arm64.zip"
    sha256 "c992a4768c2fd4a3d4ca64347751b4d2d20657c9c97c3e31fa877a0607f95dc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.1-rc/datree-cli_1.9.1-rc_Linux_x86_64.zip"
    sha256 "10e636f712e6229d19786a0a74eb45ee1bd70f12e8d6f984f7ac3ce6f1c5f965"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.1-rc/datree-cli_1.9.1-rc_Linux_arm64.zip"
    sha256 "ad870120c5271460f5a6ae0ca29e8d0be6b893562a0de379877bce973a6ebaf6"
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
