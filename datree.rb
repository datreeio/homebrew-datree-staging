# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.44-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.44-rc/datree-cli_0.14.44-rc_Darwin_x86_64.zip"
    sha256 "cf12c9c86919b4c4f922de0760ef662f04114861bac427116caa83540de06a8d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.44-rc/datree-cli_0.14.44-rc_Linux_x86_64.zip"
    sha256 "e80e19d2d03e2ccb22aa17961dadbdd5f7baaa6e79486819a6cd1eb99beb101b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.44-rc/datree-cli_0.14.44-rc_Linux_arm64.zip"
    sha256 "aa46cb634ebc9651ae183370e85ecf2b35a1b065edae4a31ebe169f636deddf9"
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
