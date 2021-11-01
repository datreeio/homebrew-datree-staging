# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.31-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.31-rc/datree-cli_0.14.31-rc_Darwin_x86_64.zip"
    sha256 "d22c5a48370795c44c5cf1e88c0f270046aaa5eb6f6993feb97ab05ee89f6efc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.31-rc/datree-cli_0.14.31-rc_Linux_x86_64.zip"
    sha256 "ab2c5b6140eb29340301a72dfcd8aaf0f37448dad79536cce89fa87356cf9ea0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.31-rc/datree-cli_0.14.31-rc_Linux_arm64.zip"
    sha256 "54f9215069e902d96d03921e3a95f726956a5c34b1a264df5aabaf0540ade9a8"
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
