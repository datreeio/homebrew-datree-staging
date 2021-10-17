# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.0-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Darwin_x86_64.zip"
    sha256 "33fa43f1ffe1f83201296f72e10bdfd0fcbd2f6e693dfd2683b58c2bb33d7e93"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Linux_x86_64.zip"
    sha256 "a0d5634bb6f70d4fe27e932ddc27d825bfb7970f04164bfbcc9e34abe82fadb6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Linux_arm64.zip"
    sha256 "1607cfa549faeeaa90dcd4d7b18812532fef071abb597776d6858053290b3e56"
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
