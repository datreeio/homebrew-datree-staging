# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.49-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.49-rc/datree-cli_1.8.49-rc_Darwin_x86_64.zip"
    sha256 "9367feab09555ff5c1b242277efb756a90f6f61178bf5d70054ed153fca8baeb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.49-rc/datree-cli_1.8.49-rc_Darwin_arm64.zip"
    sha256 "e24f7bb32df5d67a0070357ec2f41897d627a15333b24e71ae94980295d26050"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.49-rc/datree-cli_1.8.49-rc_Linux_x86_64.zip"
    sha256 "61080b79cbf301fae77c4e33fef2753f3c6e6742fe20ce04fdc9125d0d4e194c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.49-rc/datree-cli_1.8.49-rc_Linux_arm64.zip"
    sha256 "96ef28798bc0eaf6a86a3b36f660204f02915e0d1309e110bb67a9cc5f014359"
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
