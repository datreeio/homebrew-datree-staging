# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.89-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.89-rc/datree-cli_0.14.89-rc_Darwin_x86_64.zip"
    sha256 "59cf75c2c0f4f4ed9fd17605b80911f51cf815d3bc1193d16ad43bc952e9430e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.89-rc/datree-cli_0.14.89-rc_Linux_x86_64.zip"
    sha256 "07054e2c6edff8806b7b13b77726d422dc21b2ffe3aeada1580d5f70bf2ca5fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.89-rc/datree-cli_0.14.89-rc_Linux_arm64.zip"
    sha256 "83b6206491855f89397c92b4665583494dc6f3822f32f33e19b34f4e4fd953e0"
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
