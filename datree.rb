# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.46-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.46-rc/datree-cli_0.14.46-rc_Darwin_x86_64.zip"
    sha256 "c9d7c7a94b4d2b0b8d1d88c72c732ff31e4e673b04572bcfeb46a022cc425ec3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.46-rc/datree-cli_0.14.46-rc_Linux_x86_64.zip"
    sha256 "b648db3156f0eba32c26e086e64ebfceeffa7d29046bc1d147c7824c731e20fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.46-rc/datree-cli_0.14.46-rc_Linux_arm64.zip"
    sha256 "05b99736b9014b61a6fe6ed7144d3f6e64f9f1de5f4d6d72cc823261fca6178a"
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
