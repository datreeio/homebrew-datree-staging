# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.40-rc-dima-test"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc-dima-test/datree-cli_1.4.40-rc-dima-test_Darwin_x86_64.zip"
    sha256 "87792ba3bf1db0cc2616f0c408ae05b9d65dfcd1f85914774987b9700690390c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc-dima-test/datree-cli_1.4.40-rc-dima-test_Darwin_arm64.zip"
    sha256 "a97484387c5d8f232b7821e674745700ec88378b21321acbe6a04c493ea26dc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc-dima-test/datree-cli_1.4.40-rc-dima-test_Linux_x86_64.zip"
    sha256 "7248383ebf0c7479645439870e417a5d27837a475d337308f4a07cd46640d833"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc-dima-test/datree-cli_1.4.40-rc-dima-test_Linux_arm64.zip"
    sha256 "c91571d9677e77c5ef5556c9039d3dd4ae3b1fbb02f4d7bd20f72b31d7285bb3"
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
