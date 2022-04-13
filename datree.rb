# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.8-rc/datree-cli_1.2.8-rc_Darwin_x86_64.zip"
    sha256 "b56766f4d36d840d6ebfa2d9e6e34f8a8faf0b0ce8cf130bbdd6e658b6e07b7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.8-rc/datree-cli_1.2.8-rc_Darwin_arm64.zip"
    sha256 "3eed63c7d781a9894c5eb62dc40a8da93c76a1bed192557cb3345f414e18b21e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.8-rc/datree-cli_1.2.8-rc_Linux_x86_64.zip"
    sha256 "b0f9603b722c11189a6ace0d1480cd3ad4a9f86773ae911c2cbaff14b890eb92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.8-rc/datree-cli_1.2.8-rc_Linux_arm64.zip"
    sha256 "2e5783d2b0ef9872cc0a4d762efb33fe7021bba9b6d17c60fe043a5f70faccf6"
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
