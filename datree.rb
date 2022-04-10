# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.1-rc/datree-cli_1.2.1-rc_Darwin_x86_64.zip"
    sha256 "edba16a593c658e534b00013b703803402e6ada2b0eb899109595ea21615a9cb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.1-rc/datree-cli_1.2.1-rc_Darwin_arm64.zip"
    sha256 "96475c317f93727a9e1a7ab2cf06f6894c3ac74ba82033e9f59df68c1557ce52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.1-rc/datree-cli_1.2.1-rc_Linux_x86_64.zip"
    sha256 "535af8a321be4ed1b7efd88d3bdaf6d125b25b7555f24256ba40650c9cc5989d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.1-rc/datree-cli_1.2.1-rc_Linux_arm64.zip"
    sha256 "fbb1e75edebfa150a4d240856a84f286effa9ee675429b5a180b8e42b5929479"
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
