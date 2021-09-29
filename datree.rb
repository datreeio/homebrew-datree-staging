# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.4-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.4-staging/datree-cli_0.13.4-staging_Darwin_x86_64.zip"
    sha256 "c8ca209bbde75f086f9669d0831aa928f3548d3e1dd653db0956bd019720e754"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.4-staging/datree-cli_0.13.4-staging_Linux_x86_64.zip"
    sha256 "91c9ea5719265327a5882529d4dd302c9dd217d1787af9e3de39768bd4c268f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.4-staging/datree-cli_0.13.4-staging_Linux_arm64.zip"
    sha256 "e030db02490a37cf47591ea4d21feaeeef21320cd004e6dc390554a789ef1b0a"
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
