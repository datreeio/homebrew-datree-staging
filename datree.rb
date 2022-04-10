# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.25-rc/datree-cli_1.1.25-rc_Darwin_x86_64.zip"
    sha256 "0c0dfdc9f963da35ce2c06cb6e0b88ec00cb3f1869397d3901446665f7e0d0e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.25-rc/datree-cli_1.1.25-rc_Darwin_arm64.zip"
    sha256 "7c3384c8220163535d7b518a93829368d8432dc625971a612b62f113c6f89b60"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.25-rc/datree-cli_1.1.25-rc_Linux_x86_64.zip"
    sha256 "0522ed9fe397297b4688de8a0ee5f775829020b464c157a5c7477b9b73b2d069"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.25-rc/datree-cli_1.1.25-rc_Linux_arm64.zip"
    sha256 "354e744122a23ff736020ef211176a2232990cfe74df9d1c5e9ce2bf0d744040"
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
