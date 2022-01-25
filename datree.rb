# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.10-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.10-rc/datree-cli_0.15.10-rc_Darwin_x86_64.zip"
    sha256 "f694d0aa688711fb78889f02783dd1b5019cded85567348812c84e943b8d18b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.10-rc/datree-cli_0.15.10-rc_Linux_x86_64.zip"
    sha256 "341cab0fb2223517377efd755b4d012db0e1c53179f905e0a390dba605d6123c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.10-rc/datree-cli_0.15.10-rc_Linux_arm64.zip"
    sha256 "94a354dcbca418170e99ce9104c649f18ba84aa2ee0420946fea86e9b4c9e220"
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
