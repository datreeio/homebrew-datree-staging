# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.7-rc/datree-cli_1.6.7-rc_Darwin_x86_64.zip"
    sha256 "4eacf2c1b25fd1242faca7346b5dfe1679a9d1b6902abf571853b18c88ec49d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.7-rc/datree-cli_1.6.7-rc_Darwin_arm64.zip"
    sha256 "85be8aa23d1a48dceece1ed18de1ce01d334611029e5742a36c1b16fdc31f995"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.7-rc/datree-cli_1.6.7-rc_Linux_x86_64.zip"
    sha256 "5cae60d701270cd0d04da48363c48ebb46f5b8758e4efc43c403d8d864f94645"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.7-rc/datree-cli_1.6.7-rc_Linux_arm64.zip"
    sha256 "dcf1fd783cb5c57708cb65e4068794ab628b74cb0954c0c72ce5464c12f25920"
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
