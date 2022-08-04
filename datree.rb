# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.6-rc/datree-cli_1.6.6-rc_Darwin_x86_64.zip"
    sha256 "a16d76ca97bc99470632c2531d760f4cd4addf919066e6b5a65d2869fa86476e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.6-rc/datree-cli_1.6.6-rc_Darwin_arm64.zip"
    sha256 "fc80788204b80b0e68ac1318969678fe2f91f140e84b5054267cf7ea6dcbfde2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.6-rc/datree-cli_1.6.6-rc_Linux_x86_64.zip"
    sha256 "fc6980a7054255269ea408d487d4e2716526e050547cf9a6bc889ddaed583aec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.6-rc/datree-cli_1.6.6-rc_Linux_arm64.zip"
    sha256 "b25c3e898575a332ecbba03094dba4206a6ea5a67cd77a447b39d9233af0a244"
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
