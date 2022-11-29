# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.5-rc/datree-cli_1.8.5-rc_Darwin_x86_64.zip"
    sha256 "9622283b2da7a9c0d8af7c5b55fbc66f55e604da6619e4083c7d4eded8367585"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.5-rc/datree-cli_1.8.5-rc_Darwin_arm64.zip"
    sha256 "0bdfa7df9c674b8290a7ae9b238437af064c1b916a54b6324f28ca3e4c3e7c5a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.5-rc/datree-cli_1.8.5-rc_Linux_x86_64.zip"
    sha256 "63181f6f79fafe5f0be054db78163818241899d27dbb85ff67f816a082089de7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.5-rc/datree-cli_1.8.5-rc_Linux_arm64.zip"
    sha256 "50a61750d26d797c550b255c9bd5e9ea4873d567cdd6f317cb1d546d132d11ae"
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
