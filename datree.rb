# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.45-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.45-rc/datree-cli_0.14.45-rc_Darwin_x86_64.zip"
    sha256 "641482c92ace42a6056d495ec4f0d3872dfc61b6b22e9802ad9de3e2810befea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.45-rc/datree-cli_0.14.45-rc_Linux_x86_64.zip"
    sha256 "96b91be56dcf6fa58ba065673fbdbf1e94afa5706f8b37bc743d67d1bf634aa5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.45-rc/datree-cli_0.14.45-rc_Linux_arm64.zip"
    sha256 "2c4af5d20996283cd0539d8afc37a955acb39d42af8a8edc9528bdf11cff17d0"
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
