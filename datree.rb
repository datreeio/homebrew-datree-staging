# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.27-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.27-rc/datree-cli_0.15.27-rc_Darwin_x86_64.zip"
    sha256 "ef8c580e5b1d96a4c85e01a06aeb1ee316d20a8970f0347da43ffae50c9731d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.27-rc/datree-cli_0.15.27-rc_Darwin_arm64.zip"
    sha256 "87d922761d4f6481974563e18cb3c0b2e5e70f58758bb5bbf82d012022ea162e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.27-rc/datree-cli_0.15.27-rc_Linux_x86_64.zip"
    sha256 "1e147e95f3a5ea67526052aa0db22fa1fb3ce4b853a63a09cd9321180919982a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.27-rc/datree-cli_0.15.27-rc_Linux_arm64.zip"
    sha256 "d0ef3a9087c1abf361d4a4964d2102e7837daef99e526773603260ee598db26c"
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
