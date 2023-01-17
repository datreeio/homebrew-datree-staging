# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.15-rc/datree-cli_1.8.15-rc_Darwin_x86_64.zip"
    sha256 "070d7785f9c2ff5f90cefd8921aa1622d63a625492d2cd7823876d98fb98effe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.15-rc/datree-cli_1.8.15-rc_Darwin_arm64.zip"
    sha256 "f2812b8f40f2aca7bf47f9bd2e4b592765053e8602661e0e0ca90d2b0b01192d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.15-rc/datree-cli_1.8.15-rc_Linux_x86_64.zip"
    sha256 "ce97387b040c72c7caef1a2e7ef82ccae2cfa165cfc5d2b94184619d5e9bfbe7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.15-rc/datree-cli_1.8.15-rc_Linux_arm64.zip"
    sha256 "ef4d8bce986584266f05bc2f4c6e81a888c7c2d422930932a4101aef8d7d7da6"
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
