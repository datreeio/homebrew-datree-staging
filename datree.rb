# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.17-rc/datree-cli_1.9.17-rc_Darwin_x86_64.zip"
    sha256 "59ba35ca58a2a69f4193d67c55e6492e04f2b42daee97bdb95175c3f6ff3734b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.17-rc/datree-cli_1.9.17-rc_Darwin_arm64.zip"
    sha256 "7fc6fa7e98798db9164d117e035582d6d28385bec901e27aba40cd36a3f523b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.17-rc/datree-cli_1.9.17-rc_Linux_x86_64.zip"
    sha256 "abe562bd8f658c6c4104c26652d7f92730d07baf3557a1894d3a4ba456d4b47e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.17-rc/datree-cli_1.9.17-rc_Linux_arm64.zip"
    sha256 "65b5f90823e5774c8033ead1984b822471fd9d5297e0d90bf2e55b11ecf0050b"
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
