# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.12-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.12-rc/datree-cli_0.15.12-rc_Darwin_x86_64.zip"
    sha256 "37b988cd0fcafe1a854c5ce29d0e794ebbe9f0b0470184733f33c5aa16bdddf0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.12-rc/datree-cli_0.15.12-rc_Linux_x86_64.zip"
    sha256 "7f2a4584051b79de479d7c4feda6117379c319fbaf800caa12afbe4060d7ca14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.12-rc/datree-cli_0.15.12-rc_Linux_arm64.zip"
    sha256 "287d39e02b0189c03fcd31bd2602b14253ffd3e4d26017c8b6a95b21d7e0b014"
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
