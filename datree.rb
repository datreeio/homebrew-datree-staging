# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.19-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.19-rc/datree-cli_0.14.19-rc_Darwin_x86_64.zip"
    sha256 "64ae8a3b2c8aa626daadaeca18bde22d8b5be3038caa687ce6d62a4cd4422d45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.19-rc/datree-cli_0.14.19-rc_Linux_x86_64.zip"
    sha256 "aad6ec8e9cce622bda8c06193387e3a6e18d0b08fd8823d5cdc09fed77f565ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.19-rc/datree-cli_0.14.19-rc_Linux_arm64.zip"
    sha256 "2368d464c1bda73aea86da2a8413c41b6720f063d975aa17c1ce5f7ffa6f39d6"
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
