# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.5-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Darwin_x86_64.zip"
    sha256 "e44da7ac5e96cf35bb5a1de741f0f3a4e9432da0b6f97275b39ddef39e5879ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Linux_x86_64.zip"
    sha256 "8810d805bcc126131efb7aa43f2e9d50c860c40a858eee1c2286a9a0acdfc92e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-rc/datree-cli_0.14.5-rc_Linux_arm64.zip"
    sha256 "3084469affce6c7e86245f2b185b899c8800fac2ebf83b225fb882848dac5b4f"
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
