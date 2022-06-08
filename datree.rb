# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.6-rc/datree-cli_1.5.6-rc_Darwin_x86_64.zip"
    sha256 "76d285c9a14d5823be78136cfa59ee847ef99af09f39631b57b9e80c0fc0670f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.6-rc/datree-cli_1.5.6-rc_Darwin_arm64.zip"
    sha256 "469138a680d25eaba2f9c07c9c6921021d4170d522c6fe1d05a4cfd3b069e29a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.6-rc/datree-cli_1.5.6-rc_Linux_x86_64.zip"
    sha256 "9e0b8487461891699ee773fdf8e51bb084ae74f6d679dda88ad27ae7bc1dc687"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.6-rc/datree-cli_1.5.6-rc_Linux_arm64.zip"
    sha256 "34a17980cc23dc1b8fe05e62022fb48860a52e0860108e93c27e9dc36fb81b83"
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
