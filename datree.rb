# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "v1.4.42-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.42-rc/datree-cli_v1.4.42-rc_Darwin_x86_64.zip"
    sha256 "4fc87cb253bc87102637caa361947b2952f315ecdaeeb699ebde7b1bd91a9f45"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/v1.4.42-rc/datree-cli_v1.4.42-rc_Darwin_arm64.zip"
    sha256 "af875f54be3ab445af9f0f67531684211a4f3e9c5e1f1a360051528f25010334"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.42-rc/datree-cli_v1.4.42-rc_Linux_x86_64.zip"
    sha256 "6a02b5da3c789527fece5f8be2bf36445933402c3e9d4a8d404442cab3e7562b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/v1.4.42-rc/datree-cli_v1.4.42-rc_Linux_arm64.zip"
    sha256 "9404d1c30e6ec04f9656724e4f17ccf052ea264bd22d6809f0331dc54997ad6e"
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
