# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.37-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.37-rc/datree-cli_0.15.37-rc_Darwin_x86_64.zip"
    sha256 "8a4abb6795fa0df00973f3ab7713b4ce4018cc9e51b4021f87f6a9130117b377"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.37-rc/datree-cli_0.15.37-rc_Darwin_arm64.zip"
    sha256 "35d87dd812e60263d14679f20576aec736e14a9fce581c8944d660ac53ec5678"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.37-rc/datree-cli_0.15.37-rc_Linux_x86_64.zip"
    sha256 "6667878aa43aa28b05a0a2d74f54702b84336d0a06dd4ebbd7c59bca1a71505a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.37-rc/datree-cli_0.15.37-rc_Linux_arm64.zip"
    sha256 "8c5666ff2877b37e6669069a64f158d1317342d9040baa21469cfb0b28b2ca5e"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
      tput init
    EOS
  end
end
