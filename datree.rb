# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.0-rc/datree-cli_1.3.0-rc_Darwin_x86_64.zip"
    sha256 "a316a6677148df48bf2ff156ae300393a8a17ee1eba77c45c3210b79cd301ab9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.0-rc/datree-cli_1.3.0-rc_Darwin_arm64.zip"
    sha256 "6d26e52df0ed5a92e2b6148ecd0d9904ebc89b5be26b2515d0198fec91261284"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.0-rc/datree-cli_1.3.0-rc_Linux_x86_64.zip"
    sha256 "5195ad206a28e3ad3f193a239c118f2acf86a858c15aa14d1dffbbd2931ecb13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.0-rc/datree-cli_1.3.0-rc_Linux_arm64.zip"
    sha256 "854f706bc39d699ac74f889d6032a6d212f115001c3c6ee21c82411ba6036d43"
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
