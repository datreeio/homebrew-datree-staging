# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.41-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.41-rc/datree-cli_0.14.41-rc_Darwin_x86_64.zip"
    sha256 "6fb46c6b29d15a0ce4303ce565e1dfe9b1b4edf998124ba88739c1fa33e4d53c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.41-rc/datree-cli_0.14.41-rc_Linux_x86_64.zip"
    sha256 "9da74118812a1f33674aa37b082b9ff32afae492bd0964d7b484ad060da320a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.41-rc/datree-cli_0.14.41-rc_Linux_arm64.zip"
    sha256 "f5bc6a1706aada09c7e7d721376cf7fbde8fef8b4281087928a240ec311bd1bc"
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
