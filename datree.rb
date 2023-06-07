# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.4-rc/datree-cli_1.9.4-rc_Darwin_x86_64.zip"
    sha256 "b2c466a057f9a59e804c634a20e5023fdb8db51fe4813b8d435e95eae26f1044"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.4-rc/datree-cli_1.9.4-rc_Darwin_arm64.zip"
    sha256 "9a7c6739b20fc27ba95acda7e9234b6dad81f4ab073b6b9a3e4389266f7502f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.4-rc/datree-cli_1.9.4-rc_Linux_x86_64.zip"
    sha256 "7b472c62f51c2ecc9bfa06995f1f681165501d45a33d2816f9262acf9b7bf3cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.4-rc/datree-cli_1.9.4-rc_Linux_arm64.zip"
    sha256 "b0d0f0f68d9c09c19fb1bfe06e48ce69d3be2f42c546241f2648c2cedf3e13e4"
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
