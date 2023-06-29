# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.8-rc/datree-cli_1.9.8-rc_Darwin_x86_64.zip"
    sha256 "a88bbfea60b6dc6abf58028c3cd9eb311d995b22f5eb5daaab19afd93ee4e29b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.8-rc/datree-cli_1.9.8-rc_Darwin_arm64.zip"
    sha256 "89aca6a4939c399de38c7478021b91371524deaa86ff382d718b46afc9144d6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.8-rc/datree-cli_1.9.8-rc_Linux_x86_64.zip"
    sha256 "21fa4c4aa7454b0af3585a09de2f39c6b4172550bc920198f8a7336884471618"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.8-rc/datree-cli_1.9.8-rc_Linux_arm64.zip"
    sha256 "aa764cd9bab48df69c537ba8b5ab7b1c02c4206d5f1d0fa519f80eceadf24cd8"
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
