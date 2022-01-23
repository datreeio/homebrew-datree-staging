# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.8-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Darwin_x86_64.zip"
    sha256 "0f78329d47a69c942b8b638634614bbae7b4addbc52d42d6e65a9ad5692ee408"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_x86_64.zip"
    sha256 "c00804265c901bf3fa6386bcda9e21638fed1afadfb3ef84e64d85eb13ba6e5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_arm64.zip"
    sha256 "1604102b5c1b46484d0aa2b58e4369abe294ac54a8867fa4b5011b34401b3998"
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
