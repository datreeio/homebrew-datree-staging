# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.46-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.46-rc/datree-cli_1.8.46-rc_Darwin_x86_64.zip"
    sha256 "ec6c5fcb1d843a9b201d517ffc90ec8a30083bb5aad5738ee03c3fdc8ba1edfd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.46-rc/datree-cli_1.8.46-rc_Darwin_arm64.zip"
    sha256 "f0bed4955a0062c0d646056db8741947967181b3143ab8149e4c528ac6925f4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.46-rc/datree-cli_1.8.46-rc_Linux_x86_64.zip"
    sha256 "083a97a2bc38691240c5bf960b959e58974fa34f977dcb0494ec69e1bb492286"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.46-rc/datree-cli_1.8.46-rc_Linux_arm64.zip"
    sha256 "bead022bf2f0d7cb6f788f76bd0f95e268f097f416f084bf13159c51a3080536"
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
