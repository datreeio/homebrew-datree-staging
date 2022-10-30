# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.47-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.47-rc/datree-cli_1.6.47-rc_Darwin_x86_64.zip"
    sha256 "bfeb278ad6b5f776a6901b1f352b8546152581e254571f170d5a600288f02bd0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.47-rc/datree-cli_1.6.47-rc_Darwin_arm64.zip"
    sha256 "a64f9530074d64afe3d2e79ba5575754418ec4d0512a306cab166309cb5a1740"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.47-rc/datree-cli_1.6.47-rc_Linux_x86_64.zip"
    sha256 "0f253868c1e63e2b0edfd508cde33a73f9cfc44bb7cbbeb4877c26d64809c7d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.47-rc/datree-cli_1.6.47-rc_Linux_arm64.zip"
    sha256 "26362903483678352b24fe55cd535d1f0eb8411e6a4c73a0d349c2c470b3c57e"
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
