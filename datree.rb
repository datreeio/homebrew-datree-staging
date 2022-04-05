# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.21-rc/datree-cli_1.1.21-rc_Darwin_x86_64.zip"
    sha256 "edcfadb8efab83540c3f3ff40d48e39d2ec58bf78b144f1d3c1426f2e48f8815"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.21-rc/datree-cli_1.1.21-rc_Darwin_arm64.zip"
    sha256 "bd0d6cd82b6a4c546cb542d6b420e0ba26866ee8633f8934b24bc43dac265de2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.21-rc/datree-cli_1.1.21-rc_Linux_x86_64.zip"
    sha256 "eb0f698df7cf024422a27e617df96842d03ac674755ed498588bce20d99cdc02"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.21-rc/datree-cli_1.1.21-rc_Linux_arm64.zip"
    sha256 "45c02264d65397294300014d1e310e4219e1cdcfcd338204189b4ef181c02ff6"
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
