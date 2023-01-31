# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.21-rc/datree-cli_1.8.21-rc_Darwin_x86_64.zip"
    sha256 "82137c130d833e1d0eb72366ac55bf346ac9c60e0a3a9dd8593403c255451249"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.21-rc/datree-cli_1.8.21-rc_Darwin_arm64.zip"
    sha256 "72577f66846c90338fb1b14544ae903695c1d0ac41da5a27004c0421e84f4c83"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.21-rc/datree-cli_1.8.21-rc_Linux_x86_64.zip"
    sha256 "3577995f407d5d49178ac8203dbe7a3dffd6b7da460e7516767dd857f8b08a7f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.21-rc/datree-cli_1.8.21-rc_Linux_arm64.zip"
    sha256 "01c5874ee6147e59e58b3aa41515f58a9d1de596db76ac397af04421c2d25348"
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
