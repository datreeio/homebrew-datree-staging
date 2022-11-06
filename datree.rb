# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.7.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.1-rc/datree-cli_1.7.1-rc_Darwin_x86_64.zip"
    sha256 "93cce40163ea71a868663a15d7b118234a10617270ea129661a4869de90ec8f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.7.1-rc/datree-cli_1.7.1-rc_Darwin_arm64.zip"
    sha256 "02bc3a5865c48708722289fe6d277f1d0aa6f50f979ebec1bdcf637f4a04713a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.1-rc/datree-cli_1.7.1-rc_Linux_x86_64.zip"
    sha256 "d8a2ddc745ed6aecf03080848b10eb713f669ec02452deb0e26047e8b1aa0de6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.7.1-rc/datree-cli_1.7.1-rc_Linux_arm64.zip"
    sha256 "83cf20edb4c0e063200302947abbfa7e561d246df201e443997465bb8d91578a"
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
