# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.26-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.26-rc/datree-cli_0.14.26-rc_Darwin_x86_64.zip"
    sha256 "c2daf3aca6e1eb85b0472d3fdb6c735a428a75727e6c86e1bee9f8bc9fd88448"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.26-rc/datree-cli_0.14.26-rc_Linux_x86_64.zip"
    sha256 "f5ec15d0ca04389e0c15fa8a7befc917ac54aeab6b3e7a8606c9904e78b18c05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.26-rc/datree-cli_0.14.26-rc_Linux_arm64.zip"
    sha256 "b11dc756cd5ce801f7d9156cfe5be400fa10bc97228211b1a73f9e79386ed01f"
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
