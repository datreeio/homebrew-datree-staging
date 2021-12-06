# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.58-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.58-rc/datree-cli_0.14.58-rc_Darwin_x86_64.zip"
    sha256 "b55acd19e63e14ddeda02a71c9dd7536990ed00486d7a7bdd00a9cc61361b557"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.58-rc/datree-cli_0.14.58-rc_Linux_x86_64.zip"
    sha256 "46d66ccc23519a40fa3f25cc158a609c61c22c92ff173b7b7b22d3cbef7712d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.58-rc/datree-cli_0.14.58-rc_Linux_arm64.zip"
    sha256 "d821e8d63d587fdb248ff573841604a4d125a1885e38c629129e19170041d8c5"
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
