# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.24-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.24-rc/datree-cli_0.14.24-rc_Darwin_x86_64.zip"
    sha256 "0e3614a45625abc10a9e72f432317ddd74dd80fa9c2e4be623707b4a9f3e3c13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.24-rc/datree-cli_0.14.24-rc_Linux_x86_64.zip"
    sha256 "cffb6c7629af93e46080079e149d146af84dfbdd0f02d831d7688e2d2a6adaae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.24-rc/datree-cli_0.14.24-rc_Linux_arm64.zip"
    sha256 "0a04ec40e99435a51993a09487b7e4fcf9b05844c85891a33536cc843d7ee062"
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
