# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.14-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.14-rc/datree-cli_0.15.14-rc_Darwin_x86_64.zip"
    sha256 "5e69056d7c908cff8fd400d1b60d3b889dd29bc7deafc2415840beb23f4c5c3a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.14-rc/datree-cli_0.15.14-rc_Linux_x86_64.zip"
    sha256 "0723ce4a1bb7b2e6decbbecef706714e473a181f5b9d69db7ed49a54c9be4fd1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.14-rc/datree-cli_0.15.14-rc_Linux_arm64.zip"
    sha256 "f8d8a57e6ca4ef51041eb1ae67caf709ccdef5970f5430977cf70e3491c36e6d"
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
