# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.1-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-rc/datree-cli_0.14.1-rc_Darwin_x86_64.zip"
    sha256 "679b6993ee093fa24d4b6e395c142ed06084f7d5af888d7db13a758aafdb6419"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-rc/datree-cli_0.14.1-rc_Linux_x86_64.zip"
    sha256 "b5fd40828d27a01de8f21df3890bf4bd0658b7e307da336688e1e254d6bbd3f0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-rc/datree-cli_0.14.1-rc_Linux_arm64.zip"
    sha256 "4b3b16529557786fbb43abe882b01b44dac6b553b87906af9ad10ac0a657a6f0"
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
