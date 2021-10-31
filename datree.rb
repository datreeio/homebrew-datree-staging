# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.27-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.27-rc/datree-cli_0.14.27-rc_Darwin_x86_64.zip"
    sha256 "a05e1b0238018bcb76787e0bf805fb51d5f3c379c71711f6f544ea4ef208e626"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.27-rc/datree-cli_0.14.27-rc_Linux_x86_64.zip"
    sha256 "f116d24826d5eaad2e84d282701f9407a318a2ee7e0bb6114eb19c7f7ef903d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.27-rc/datree-cli_0.14.27-rc_Linux_arm64.zip"
    sha256 "aaffb9fc1e56df5f15355b71667db91877e08702285f47438affd5943998b2f4"
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
