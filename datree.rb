# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.6-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.6-staging/datree-cli_0.14.6-staging_Darwin_x86_64.zip"
    sha256 "4dfbab62ac95a0b0e3131552019ae2541c5d2815c68a5930971a8911de50a7fd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.6-staging/datree-cli_0.14.6-staging_Linux_x86_64.zip"
    sha256 "4441dba6cc680a63be457bf379b22d1a31520efd1a18c4965c1e77482e4df1ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.6-staging/datree-cli_0.14.6-staging_Linux_arm64.zip"
    sha256 "c8bd391b85016108432e806d10bb147bbae7ac1e724542ed5e25099b06058d36"
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
