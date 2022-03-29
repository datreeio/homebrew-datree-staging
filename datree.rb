# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.4-rc/datree-cli_1.1.4-rc_Darwin_x86_64.zip"
    sha256 "e6070c1072f8189543e2f438f5d6b8ffc73b5c023aa513cbbf819fd7ac1e931a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.4-rc/datree-cli_1.1.4-rc_Darwin_arm64.zip"
    sha256 "5d0b0c3637eed17578e71be9ddc543850075ead78dc96f908a0842d50fcf1fb9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.4-rc/datree-cli_1.1.4-rc_Linux_x86_64.zip"
    sha256 "6f809f077e72f3a0a833f6ef855e7f0abb3bcbab125077b938081054d13aeebe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.4-rc/datree-cli_1.1.4-rc_Linux_arm64.zip"
    sha256 "bfe90ac0507206bbd1ab13c473538f07b3d1fb11ff7c70d0f66c1423e5cfd7a2"
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
