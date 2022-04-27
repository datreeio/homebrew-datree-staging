# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.7-rc/datree-cli_1.3.7-rc_Darwin_x86_64.zip"
    sha256 "850144fd5133c6aedc1885a476bf3d3ac60fe8f99a7ac5c5bff6bf6dde01e49d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.7-rc/datree-cli_1.3.7-rc_Darwin_arm64.zip"
    sha256 "bbd1920c6ea5d77d6ed0b88635aa313b3bc9c7187e04b355d5896b175a41f132"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.7-rc/datree-cli_1.3.7-rc_Linux_x86_64.zip"
    sha256 "11038e35eb600f4c8d3f2e71ebd7dbf3fadbe0e3452c993934ec80417694e392"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.7-rc/datree-cli_1.3.7-rc_Linux_arm64.zip"
    sha256 "6890a36bfa5b38413b46a974b0c5ebd50eff9c796dbc996929eb3d7f8bed4544"
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
