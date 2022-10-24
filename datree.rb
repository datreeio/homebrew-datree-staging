# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.41-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.41-rc/datree-cli_1.6.41-rc_Darwin_x86_64.zip"
    sha256 "5a8899bfde802b0a3bc7e34543015d42c8480a692a90fb63abbe484f5c974f64"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.41-rc/datree-cli_1.6.41-rc_Darwin_arm64.zip"
    sha256 "fbe75391c1bc5b0b490a2c109053358111c56274ddcde2bae72a12665a59a443"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.41-rc/datree-cli_1.6.41-rc_Linux_x86_64.zip"
    sha256 "4b6904035c87ef4bd07e676b21d6bf0391abcaeaf7bd4f373fdfc2bc95ca99e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.41-rc/datree-cli_1.6.41-rc_Linux_arm64.zip"
    sha256 "64163983b61641389452b75673434b9a1cc891ac2dc606dbca125de6ac2e4cb8"
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
