# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.10-rc/datree-cli_0.16.10-rc_Darwin_x86_64.zip"
    sha256 "d762ba8cfeea46da123751a33f19543cacc668d063845b8d7578e4754d9b5f35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.10-rc/datree-cli_0.16.10-rc_Darwin_arm64.zip"
    sha256 "7541b60b8a52abcc2a7f4e130ef2d187dfb5676f3ba87361ec8a6fbc21ddf33e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.10-rc/datree-cli_0.16.10-rc_Linux_x86_64.zip"
    sha256 "0af62dc5dc28e09d35d2337bbc7e93153d24310368514bdd5729c6b035e06f96"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.10-rc/datree-cli_0.16.10-rc_Linux_arm64.zip"
    sha256 "1db47680747e69b1c85fb37384fb1e8355c0bdc6e98e4c41cc216930f0b697bc"
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
