# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.12-rc/datree-cli_1.5.12-rc_Darwin_x86_64.zip"
    sha256 "a0d8a9481fadea4cd89f31a7a9442615fba00653896d283ddde75ef0a92d4af8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.12-rc/datree-cli_1.5.12-rc_Darwin_arm64.zip"
    sha256 "952cb902c7142aa5165b56ed1de939d9bfe55f718d3a37f67a158a30794b6c8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.12-rc/datree-cli_1.5.12-rc_Linux_x86_64.zip"
    sha256 "631e71864da627807c720c1e387c859cbace2f5fadb4a8bd49319f1e2cc80177"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.12-rc/datree-cli_1.5.12-rc_Linux_arm64.zip"
    sha256 "19df10f18e6ccc8e442a160b5de3695edb26224043de72147e43bc0b689f4044"
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
