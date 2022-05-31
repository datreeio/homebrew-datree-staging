# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.37-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.37-rc/datree-cli_1.4.37-rc_Darwin_x86_64.zip"
    sha256 "7abf1a4101f5b4c1de4763b47fdd26a5ff16de1d002053853d435745f08ae606"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.37-rc/datree-cli_1.4.37-rc_Darwin_arm64.zip"
    sha256 "7f8424c1eba777ada284c7621a8580e76a644961f8a13fc021e1943fd31edb19"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.37-rc/datree-cli_1.4.37-rc_Linux_x86_64.zip"
    sha256 "bb98b17cf07f97a329d77e219f755d9505c238b530e5a12f3c13a90c9ed8de9b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.37-rc/datree-cli_1.4.37-rc_Linux_arm64.zip"
    sha256 "0668716070ad48474e4084df63703b6e40392876630bdb7b40f82e2c932aa87f"
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
    EOS
  end
end
