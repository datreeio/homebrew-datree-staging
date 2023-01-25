# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.17-rc/datree-cli_1.8.17-rc_Darwin_x86_64.zip"
    sha256 "54828b6275d5e14a1de4e38cac60f2a9b362ccffbe6549f1b9d81fc8619479ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.17-rc/datree-cli_1.8.17-rc_Darwin_arm64.zip"
    sha256 "0f31cdd37f7c667f40a84b7fad295418f9f9b811dbd288d587347491f1681094"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.17-rc/datree-cli_1.8.17-rc_Linux_x86_64.zip"
    sha256 "96d4ba21793b6cb6008c6623ce686598a9b7457e9e340370f84677fdd96b01e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.17-rc/datree-cli_1.8.17-rc_Linux_arm64.zip"
    sha256 "1072d906bdf9ac6fcb65a2a5b17450f83f33d3ef93790bc6518d141f5db4a0c3"
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
