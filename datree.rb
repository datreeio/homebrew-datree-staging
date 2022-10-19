# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.39-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.39-rc/datree-cli_1.6.39-rc_Darwin_x86_64.zip"
    sha256 "6de451437477061713aaf5d7192e89e0aa6aef7fba89eebaea82dbf458482971"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.39-rc/datree-cli_1.6.39-rc_Darwin_arm64.zip"
    sha256 "af67a0cf8029819f5f85802fc195387bc06adce57e6bc34eb03f98da16623654"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.39-rc/datree-cli_1.6.39-rc_Linux_x86_64.zip"
    sha256 "912d1478eb2fa5e101732026a90788c9ae396c80e42d0abd41e9c808b366d230"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.39-rc/datree-cli_1.6.39-rc_Linux_arm64.zip"
    sha256 "2c0a9052d9cbd91bcaf684a54c0c3870f4d3e6279269339e0a679890fe1a9b5a"
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
