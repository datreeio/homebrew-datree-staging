# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.25-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.25-rc/datree-cli_0.14.25-rc_Darwin_x86_64.zip"
    sha256 "1f4519d5f4376c65dd2aa9c1dce7a8cd92b1e165609d0cadfd212c6bd2d51f70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.25-rc/datree-cli_0.14.25-rc_Linux_x86_64.zip"
    sha256 "ebef05e69c06bc8beb9cdb6a7b6394fcda099c2f493bcbbfe9a4925ff505f9cf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.25-rc/datree-cli_0.14.25-rc_Linux_arm64.zip"
    sha256 "3f7b921652670b15175fbcc6a63c5db55d368490b3ab47c91584ff61e0f08727"
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
