# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.1-rc/datree-cli_1.0.1-rc_Darwin_x86_64.zip"
    sha256 "68e2a5d8a0ad31ef57a932ae3b51064b516933c4a3de5b46542d8d55f0bf7a5a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.1-rc/datree-cli_1.0.1-rc_Darwin_arm64.zip"
    sha256 "0c0dd677cbecd65c21439183b4696a1216429de0dfc94f55b80015adc7b317c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.1-rc/datree-cli_1.0.1-rc_Linux_x86_64.zip"
    sha256 "d328c85878a06b095a21cad09f480cb96177322866244e707a7d304bf93dc1fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.1-rc/datree-cli_1.0.1-rc_Linux_arm64.zip"
    sha256 "a5bb482de4c2292dae2ab376545d84393caae8b44d631e2f1df90b20c144147e"
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
      tput init
    EOS
  end
end
