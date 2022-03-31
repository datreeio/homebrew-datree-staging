# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.12-rc/datree-cli_1.1.12-rc_Darwin_x86_64.zip"
    sha256 "8633e7d52a1e5d75420ec8b1b2ad8acc034ae0f00ba2092a350107604418ba05"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.12-rc/datree-cli_1.1.12-rc_Darwin_arm64.zip"
    sha256 "50ea3d42ef02faacf886961b0595ad70326322f1762f1a61416f0931709a005c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.12-rc/datree-cli_1.1.12-rc_Linux_x86_64.zip"
    sha256 "e572a05f57e8d0cd827bc09a3e815a928dd100fe9e8f8b17341ae571df71e4a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.12-rc/datree-cli_1.1.12-rc_Linux_arm64.zip"
    sha256 "9c7f14ed437525167a0a1a7dc5315315d5cc780a65cf85ed6aa225956ae6a83f"
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
