# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.61-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.61-rc/datree-cli_0.14.61-rc_Darwin_x86_64.zip"
    sha256 "8ae749f767c5e49c9fd37a88158920f1cce2bb62df9d3fc5894389004fc9b58e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.61-rc/datree-cli_0.14.61-rc_Linux_x86_64.zip"
    sha256 "b68b3aeff6676b8ff85093b03385bd28c33b22058cb657c9b8bbbabd361f65b4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.61-rc/datree-cli_0.14.61-rc_Linux_arm64.zip"
    sha256 "c6ee3766ddd0ad793e4d8fc9a7ea118200e83ad1fba394fa5f1df207d50015ee"
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
