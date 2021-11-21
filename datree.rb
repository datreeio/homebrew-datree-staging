# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.50-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.50-rc/datree-cli_0.14.50-rc_Darwin_x86_64.zip"
    sha256 "99b046efa47683b04f609c43f13a613c6886526e63c9e8fe3aca2a33da41a11c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.50-rc/datree-cli_0.14.50-rc_Linux_x86_64.zip"
    sha256 "6ed5514da61171958d99f862d37ce97d9aa5e4e047646dea81292c2c80afe681"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.50-rc/datree-cli_0.14.50-rc_Linux_arm64.zip"
    sha256 "160a1535eafffe18cbbde954f6399caf9500b40ffd9e99148c2851b130e1d81e"
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
