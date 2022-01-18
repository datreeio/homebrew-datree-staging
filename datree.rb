# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.4-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.4-rc/datree-cli_0.15.4-rc_Darwin_x86_64.zip"
    sha256 "30b954239157a0d9147e29c62e93428819d1ab02fc050781360b55006e96ceaf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.4-rc/datree-cli_0.15.4-rc_Linux_x86_64.zip"
    sha256 "2fd56c54c3baf0dd56ea79d11ece4652f110eaa5825302bd7c88718c80b68f2e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.4-rc/datree-cli_0.15.4-rc_Linux_arm64.zip"
    sha256 "46bfbc232f2b873451ed020f35e034338fba811114c4e6a63729c21d89b89c45"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
