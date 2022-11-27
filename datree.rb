# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.3-rc/datree-cli_1.8.3-rc_Darwin_x86_64.zip"
    sha256 "575ea4949fc91e05fd8f6a90089febbee9b015e2798f0c5fe52f1acc7b86af1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.3-rc/datree-cli_1.8.3-rc_Darwin_arm64.zip"
    sha256 "2cce13d89455667331313ec724b9fdee1b1bd296463259bd89a309d84483c4ae"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.3-rc/datree-cli_1.8.3-rc_Linux_x86_64.zip"
    sha256 "dec80776fcfa036422ff8388669624a5d389e68ee9e07c4c1876ecfa77c69ce2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.3-rc/datree-cli_1.8.3-rc_Linux_arm64.zip"
    sha256 "457ddeee97de8893a1eeb220bdeb015f63091b83937a3bb35875b2a00990a19d"
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
