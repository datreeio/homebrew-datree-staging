# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.64-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.64-rc/datree-cli_1.8.64-rc_Darwin_x86_64.zip"
    sha256 "0d3f15f43374d2b5ae2cfd02927f6d49842fd09ca6d0d73a6d734c283c571888"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.64-rc/datree-cli_1.8.64-rc_Darwin_arm64.zip"
    sha256 "9afc7e68e99de42d9efcbb6e6a70953cd98a6d8929b524ece8f98839880231fa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.64-rc/datree-cli_1.8.64-rc_Linux_x86_64.zip"
    sha256 "4760813b0e20db97aa9905a44751ede9427b02dae40d7b08e24e1d3c21463906"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.64-rc/datree-cli_1.8.64-rc_Linux_arm64.zip"
    sha256 "87eea4b71816770eeb1b57cc1016bf52d7c10b94276bf5c2c39cd1b6575d080d"
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
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
