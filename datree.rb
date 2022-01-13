# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.1-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.1-rc/datree-cli_0.15.1-rc_Darwin_x86_64.zip"
    sha256 "1ffd45442480f06c64a84e658d87c2e2b93b4b803795935f5af56947b3841df5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.1-rc/datree-cli_0.15.1-rc_Linux_x86_64.zip"
    sha256 "1b1300ed6a2ae4f0b9c7393c088fb343cba8731e7b5fb6a94ab3446e78df1472"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.1-rc/datree-cli_0.15.1-rc_Linux_arm64.zip"
    sha256 "e3b5692660ab5b7f017146d6fd379def58338adcbc654f7c6ebad01ee0e62104"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
