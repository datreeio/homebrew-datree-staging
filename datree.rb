# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.39-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.39-rc/datree-cli_0.15.39-rc_Darwin_x86_64.zip"
    sha256 "734dfac7700458436e8e043923eaa5a3e56a06c059ad4080307072c5c2e48999"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.39-rc/datree-cli_0.15.39-rc_Darwin_arm64.zip"
    sha256 "8ec2274680501ddec9763dab6cec4297756142d77f7959707b56cf6a65c6ce3c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.39-rc/datree-cli_0.15.39-rc_Linux_x86_64.zip"
    sha256 "7b4d78b955a61ed9ef3de2342e84cfba1271f1de3a4de01e97ad2e0bb0417233"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.39-rc/datree-cli_0.15.39-rc_Linux_arm64.zip"
    sha256 "29038c5f73ed5785226cd24f6017b9b9c63171a63f52337d9c93bd048365f926"
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
      tput init
    EOS
  end
end
