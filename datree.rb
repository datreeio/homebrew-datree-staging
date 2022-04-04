# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.18-rc/datree-cli_1.1.18-rc_Darwin_x86_64.zip"
    sha256 "39ea5994e4d9b9528753cf363b4dee7c170c06e939ee555ab3e33d1db2bb2e0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.18-rc/datree-cli_1.1.18-rc_Darwin_arm64.zip"
    sha256 "61d2c89a988a62b8b3fcb54cfe7c156ba0790284bac689381841c19639566de8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.18-rc/datree-cli_1.1.18-rc_Linux_x86_64.zip"
    sha256 "25bccd57b75a7e563785617af454c7ac903a617ca0a84b2cc7252d254c3330a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.18-rc/datree-cli_1.1.18-rc_Linux_arm64.zip"
    sha256 "990f69c0eda6d0faa842a8d684bdaab2e46758983e7c964860a2ada2f136d9d1"
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
