# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.25-rc/datree-cli_1.5.25-rc_Darwin_x86_64.zip"
    sha256 "a8e5b126603d40bbc93a97b0e32f7db2d5e26eac6ab7ffe1a27aaa6680344b34"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.25-rc/datree-cli_1.5.25-rc_Darwin_arm64.zip"
    sha256 "bce89fdde117e3be721a5c802f95d8bd54b459666318a70ca85f5d7bc5510c9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.25-rc/datree-cli_1.5.25-rc_Linux_x86_64.zip"
    sha256 "dcd01ddb1fb78595978e885c3fbbcf1e3bcfabd6e867046a89a00d3dfd20a11d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.25-rc/datree-cli_1.5.25-rc_Linux_arm64.zip"
    sha256 "e59d35ff1ff224a5b05f8911955d956dd4607280813a73e582b03e128e064a9b"
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
