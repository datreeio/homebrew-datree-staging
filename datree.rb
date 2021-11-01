# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.32-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.32-rc/datree-cli_0.14.32-rc_Darwin_x86_64.zip"
    sha256 "9e7d83c736d4d34349646306ccc383d98966c8884595f4c5b369363f75b174a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.32-rc/datree-cli_0.14.32-rc_Linux_x86_64.zip"
    sha256 "25153367818b0c82e8a3a39c5586822557ab7f41f4cac13cbc713b4b7dc4c4f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.32-rc/datree-cli_0.14.32-rc_Linux_arm64.zip"
    sha256 "6f85adfcaeeb9ce4cadb4e5e21b792b91aef9defc4ffc71f4b642ea0967a1c9e"
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
