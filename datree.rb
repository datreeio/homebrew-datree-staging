# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.0-rc/datree-cli_1.4.0-rc_Darwin_x86_64.zip"
    sha256 "98ed19fd354fc5ac60616f356392115b9f1908a9923b315e08f72c6174705095"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.0-rc/datree-cli_1.4.0-rc_Darwin_arm64.zip"
    sha256 "5c775cee3163a2cff402ec1070a4dee4ac04a177e22beb08e5c75e0830e1c005"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.0-rc/datree-cli_1.4.0-rc_Linux_x86_64.zip"
    sha256 "615354e3e5e63822b6eca8b904137f3340a9afd1dee4620bef67ffe5fad1f94c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.0-rc/datree-cli_1.4.0-rc_Linux_arm64.zip"
    sha256 "7b5d15dc2be7b922c1d87593aa6483e6c6598969f9dbf84ac7a85705f0f50916"
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
