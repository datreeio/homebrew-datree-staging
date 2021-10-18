# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.5-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Darwin_x86_64.zip"
    sha256 "dcec210d37c520576cbd936591e5cbfca665d71d0d3bab630afcdab63d88472f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Linux_x86_64.zip"
    sha256 "342323fb53799ccf059382dc6e1059636cf45f61992f863662d34d69ce9d9561"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Linux_arm64.zip"
    sha256 "8d554970a24ed5cbdf48e007c6fd56d402a60ff5be8b185149f60c2dda8938f2"
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
