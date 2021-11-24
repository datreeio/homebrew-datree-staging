# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.53-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.53-rc/datree-cli_0.14.53-rc_Darwin_x86_64.zip"
    sha256 "31721dedf31916862bad48c9114517b0b6d9fe3a5b526fdc79ca9fb6336a0fa5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.53-rc/datree-cli_0.14.53-rc_Linux_x86_64.zip"
    sha256 "7c36da71c279b91fd526f73b052adefafb2190ec5f1d3a76a7813954c7a9421e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.53-rc/datree-cli_0.14.53-rc_Linux_arm64.zip"
    sha256 "6d1378bf9bfd9274257774267102002c13a9b76fe6320e4790fcb9a677938ee8"
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
