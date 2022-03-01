# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.32-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.32-rc/datree-cli_0.15.32-rc_Darwin_x86_64.zip"
    sha256 "7317e2eb32ace09865b68541b2190b3b74373645b31a941a1e664bfae9657180"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.32-rc/datree-cli_0.15.32-rc_Darwin_arm64.zip"
    sha256 "baf03b588d367069a7ba354b5b32aa9f41fbcb831cb1691cce8ae059d6a6a8ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.32-rc/datree-cli_0.15.32-rc_Linux_x86_64.zip"
    sha256 "8e0c88bcbbcc42cc1de3c7d7b97a3aee4847032c36d2839ce3bb2682cbc811d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.32-rc/datree-cli_0.15.32-rc_Linux_arm64.zip"
    sha256 "19a953bcfa8b765fe54b777f309eda83c3e4c6c3bd28bb2abc3a2a32d7bd2418"
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
