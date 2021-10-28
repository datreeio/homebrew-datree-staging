# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.21-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.21-rc/datree-cli_0.14.21-rc_Darwin_x86_64.zip"
    sha256 "91a5271ef85ac5c3203e255a498ff89f1871874872fbff2f860dd41f18f49bb6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.21-rc/datree-cli_0.14.21-rc_Linux_x86_64.zip"
    sha256 "88b774bfd0a760a033888ff46f2ee4217a927ba7189f704c97c50c5df4588599"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.21-rc/datree-cli_0.14.21-rc_Linux_arm64.zip"
    sha256 "37709f1e72cfd1ac2d1b109889bcc6a6847f06e8e14cd4aa398cedfd317bb313"
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
