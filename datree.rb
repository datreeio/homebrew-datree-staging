# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.3-rc/datree-cli_1.6.3-rc_Darwin_x86_64.zip"
    sha256 "3aa7bbd085a1dba43a65e3a1676ca076488b6dd41f5c89745d18ff6e56f174a6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.3-rc/datree-cli_1.6.3-rc_Darwin_arm64.zip"
    sha256 "ba2a3b51ce4a9a7b6d8e08e1c2f32dd0f10b4a10e08028a22d49faa75b6fedc3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.3-rc/datree-cli_1.6.3-rc_Linux_x86_64.zip"
    sha256 "f22a084ead48a5f3677dde5b323aee23b2c9f9594bbf520af679dc6d3468ea8b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.3-rc/datree-cli_1.6.3-rc_Linux_arm64.zip"
    sha256 "976d675e9bb90282ab5c9f1472c96ab7cbf79231cd9d851a16e0801220221d3a"
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
