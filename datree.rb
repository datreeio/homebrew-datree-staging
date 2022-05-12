# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.12-rc/datree-cli_1.4.12-rc_Darwin_x86_64.zip"
    sha256 "8ff4654ccc481f71872f2188e7fd2836dad71228f73e4dc424abfaeabdc2da2e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.12-rc/datree-cli_1.4.12-rc_Darwin_arm64.zip"
    sha256 "ff7cd9f76d0c11430ab017651579604c76411d76aed0b0c7522fa00f3e70b657"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.12-rc/datree-cli_1.4.12-rc_Linux_x86_64.zip"
    sha256 "4689a5973d6fd55fad6edafe06c40cc322c44138e7eb8783b76324e49622a89d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.12-rc/datree-cli_1.4.12-rc_Linux_arm64.zip"
    sha256 "77f980022cb81c7f9d1f30c21e2346d6fbefc3f66bc82c9be54ef902a1fd77bd"
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
