# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.15-rc/datree-cli_1.6.15-rc_Darwin_x86_64.zip"
    sha256 "7df8119455fec408248e6d36509d1c95ffbe649e4e5f005c72cfbddaf8357556"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.15-rc/datree-cli_1.6.15-rc_Darwin_arm64.zip"
    sha256 "07dc24007042713c107abbc57e80d6d7b5910e045bcd25e195e7cd5ba8f38bda"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.15-rc/datree-cli_1.6.15-rc_Linux_x86_64.zip"
    sha256 "b32c7952af1ef3915b0cf84931bf7f7b4f1ff31b5ad8c0ce307a602e6b64ee7b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.15-rc/datree-cli_1.6.15-rc_Linux_arm64.zip"
    sha256 "11dbfb8730e4eecf45738a50c6a3f6d72854345fd50d76121fcaf653528d1f5a"
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
