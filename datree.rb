# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.23-rc/datree-cli_0.15.23-rc_Darwin_x86_64.zip"
    sha256 "a5ae93445fd8f52d8d9c305bda91cfafebe7ccfdd3b810e384a094ed7de029bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.23-rc/datree-cli_0.15.23-rc_Darwin_arm64.zip"
    sha256 "7b0defcbbd856a49b9ab27eb77c54d456edddb98c18366b246157e9146d04519"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.23-rc/datree-cli_0.15.23-rc_Linux_x86_64.zip"
    sha256 "03d0241ac2ff799a89a1f58c316181f20e15a2e855508cadb4f85f824e9de9f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.23-rc/datree-cli_0.15.23-rc_Linux_arm64.zip"
    sha256 "2026a81823180834a53f9390853e1f6e4552217cf6759bf58693d2776e63dbf5"
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
