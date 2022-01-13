# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.102-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.102-rc/datree-cli_0.14.102-rc_Darwin_x86_64.zip"
    sha256 "cc40950c580019606ca84bc7285ddae043586de6a6d3f63c53e03dd9bede1fac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.102-rc/datree-cli_0.14.102-rc_Linux_x86_64.zip"
    sha256 "ecae6548d57268da52158d738e38b2ebb0d1a9763a7d8e2be5a4a26546f93094"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.102-rc/datree-cli_0.14.102-rc_Linux_arm64.zip"
    sha256 "58234a2772a53ab7a04e97a069f8c3cdc8818028a3cd70d83186aca029276df3"
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
