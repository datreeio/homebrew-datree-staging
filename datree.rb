# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.11-rc/datree-cli_1.8.11-rc_Darwin_x86_64.zip"
    sha256 "95ed3f385cb82caef6eb2c25a482693ea6923768649e9ffdfcdbefd6d50b85ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.11-rc/datree-cli_1.8.11-rc_Darwin_arm64.zip"
    sha256 "24056ebb20e67e75422ee4fb1ed71ceeec239b6b5fc7eab52aed38267bf7fb6d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.11-rc/datree-cli_1.8.11-rc_Linux_x86_64.zip"
    sha256 "ce2c0e0eab9632d3e085a800852163a655ba3ac79dee427d32e995ca6f6294d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.11-rc/datree-cli_1.8.11-rc_Linux_arm64.zip"
    sha256 "f62a8005c12963def7e5dc67ead1ca6469e6f1f8bf7ae109dfe396abeb9ae367"
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
