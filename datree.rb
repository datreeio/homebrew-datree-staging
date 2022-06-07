# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.4-rc/datree-cli_1.5.4-rc_Darwin_x86_64.zip"
    sha256 "2f0083bfa52153cdb69d202ca125c55fcd86ba8ff24a15fe2b915c7f50dd3eb3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.4-rc/datree-cli_1.5.4-rc_Darwin_arm64.zip"
    sha256 "480207f2553d6ef6122a72e14a6113cf2b1f5cf837bd29f8d5f8f5390df9e43c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.4-rc/datree-cli_1.5.4-rc_Linux_x86_64.zip"
    sha256 "69c2947c70a87a11e786d78bfa7a521ba6910cef6f9233838328cf2dee4a273d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.4-rc/datree-cli_1.5.4-rc_Linux_arm64.zip"
    sha256 "93e6ca55b6a59d8c302dce8123dabbd51694d324f878d93a1a279cb728c23b5e"
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
