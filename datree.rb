# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.40-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.40-rc/datree-cli_0.14.40-rc_Darwin_x86_64.zip"
    sha256 "244156a9c358bb42d42a93efa4b18e91303aa0ba91977c750a4c25de97e1333b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.40-rc/datree-cli_0.14.40-rc_Linux_x86_64.zip"
    sha256 "18b127b73a6045adb79a4fcc6e279feb1f10363c01c8b2d7e9e4e5f15bb8fafd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.40-rc/datree-cli_0.14.40-rc_Linux_arm64.zip"
    sha256 "5aa583cb9e796726946b6c09a77ca0220b38485f4c8a38d85f0f2e4c46cbb016"
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
