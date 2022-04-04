# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.17-rc/datree-cli_1.1.17-rc_Darwin_x86_64.zip"
    sha256 "80ff63b91958afa1e628083f801f1b409c6a9da168a7c8a873266f8a4f63a2c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.17-rc/datree-cli_1.1.17-rc_Darwin_arm64.zip"
    sha256 "17f893a929c33f1dcda47396dc56be501bb816f2d0ee5755104b36009d5efc7a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.17-rc/datree-cli_1.1.17-rc_Linux_x86_64.zip"
    sha256 "3f325e484b5d68c95adcc8ec2784f3cd559465214587b950970a869ad0d6716b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.17-rc/datree-cli_1.1.17-rc_Linux_arm64.zip"
    sha256 "9f8d25119cbfa72fb778c7fb06baab338e99f55ba62669beb32cd8cc8c9d98e2"
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
