# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.8-rc/datree-cli_1.4.8-rc_Darwin_x86_64.zip"
    sha256 "6bc3ac329227fd6dc0beb088ac3f55b54c247da6b75808d1cd4f59974b662c31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.8-rc/datree-cli_1.4.8-rc_Darwin_arm64.zip"
    sha256 "931a07bea61ffc83037e81747bbae979642fe4f5ad7400279b334b2972a05bd2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.8-rc/datree-cli_1.4.8-rc_Linux_x86_64.zip"
    sha256 "b97504b2cda66da4670f7d255cd6997718a82f7cd27fa3a54fdabfcc0e6d56c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.8-rc/datree-cli_1.4.8-rc_Linux_arm64.zip"
    sha256 "8649754a75ae3d3406aab5c4e150b1e1e3f7c4fb041a04a3003cc73d2297248b"
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
