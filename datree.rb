# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.3-rc/datree-cli_1.5.3-rc_Darwin_x86_64.zip"
    sha256 "028d6ca2ada49e2a8510b1f03ae39b2deea3ef5591d1d0aa55ac89b0a61b2ca2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.3-rc/datree-cli_1.5.3-rc_Darwin_arm64.zip"
    sha256 "2ff391755b5e56d63193b4f2c7044829a273fbe899aa5944ce0cbb429ce18212"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.3-rc/datree-cli_1.5.3-rc_Linux_x86_64.zip"
    sha256 "27cd993961da18c75ec63e7e05251b5310b2426ba94c3868a1dc43bd57eb6fd9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.3-rc/datree-cli_1.5.3-rc_Linux_arm64.zip"
    sha256 "5c315252fb8181fe332c2d6113c4f6b152f0f63bf43756a82457dd4d7458cfa0"
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
