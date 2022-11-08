# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.7.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.2-rc/datree-cli_1.7.2-rc_Darwin_x86_64.zip"
    sha256 "bc2d61e72f9f76106332dc7bdb2ddbc8a225aa73b6dbff39ab04a386ed948533"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.7.2-rc/datree-cli_1.7.2-rc_Darwin_arm64.zip"
    sha256 "8490ce9bc9d554a4ada688db7295c6e9128d81c9d8ab245238be94c9db5d17b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.2-rc/datree-cli_1.7.2-rc_Linux_x86_64.zip"
    sha256 "10fea4e74ba435bea67bdf0d7c002dd57ac158b43c4072769eef8b1ef2a71da8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.7.2-rc/datree-cli_1.7.2-rc_Linux_arm64.zip"
    sha256 "aef23b5709b7ed42a1d1fb4328cf1718cc1139fa62a6e26c0c597341ca129451"
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
