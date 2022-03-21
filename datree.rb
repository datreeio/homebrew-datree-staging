# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.9-rc/datree-cli_1.0.9-rc_Darwin_x86_64.zip"
    sha256 "6c806007f75325beb55942ff26c797fc9a8250fc7f34cbff4b1e6daa14161629"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.9-rc/datree-cli_1.0.9-rc_Darwin_arm64.zip"
    sha256 "232acedf873200b456651ebeab094b57b1d2d2c4daede10e353910b0fef0db38"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.9-rc/datree-cli_1.0.9-rc_Linux_x86_64.zip"
    sha256 "3b77f4f906ad0973bb285bee54fbad82b85c64bac9a93866352cd04a1b90c303"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.9-rc/datree-cli_1.0.9-rc_Linux_arm64.zip"
    sha256 "b1c0395f8f9529ef8f7d89fc52108fc44c9b17add60e48d2ddccad42ffe428c8"
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
       Using Kustomize? => https://hub.datree.io/kustomize-support
      tput init
    EOS
  end
end
