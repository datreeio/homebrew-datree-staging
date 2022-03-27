# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.2-rc/datree-cli_1.1.2-rc_Darwin_x86_64.zip"
    sha256 "dfa593e1bcf42f67c6d309fa22a8b5e371f0cfb7e9d8da2c5919c61e0de89bb9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.2-rc/datree-cli_1.1.2-rc_Darwin_arm64.zip"
    sha256 "6cf0db72d11d8bcafa4de9ca238f9e02b78a4f15c5a52bf08ee7bc079d7a5b59"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.2-rc/datree-cli_1.1.2-rc_Linux_x86_64.zip"
    sha256 "f3cb0662386b59f2d4b5797de599b82a931c16a4288e426d216fab1ee66334da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.2-rc/datree-cli_1.1.2-rc_Linux_arm64.zip"
    sha256 "cca64028b378862dc6a25c744a50307db9b2dc61906cc277d9fe26d0e011926e"
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
