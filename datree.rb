# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.0-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.0-staging/datree-cli_0.13.0-staging_Darwin_x86_64.zip"
    sha256 "5d4f92dd97d135599027d4a4b77117eeb23c8431357276c6b8bb509df2c2bf93"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.0-staging/datree-cli_0.13.0-staging_Linux_x86_64.zip"
    sha256 "02fc60c6dcf72344d597ce8e00736e49836b74e71d5b67cb06f82e7d1e0f4a48"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.0-staging/datree-cli_0.13.0-staging_Linux_arm64.zip"
    sha256 "e07ec84eec7893864cff8ddf1f3ec704291f87848bb8593967c00f76373bcec8"
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
