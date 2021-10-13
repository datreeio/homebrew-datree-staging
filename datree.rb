# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.1-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-staging/datree-cli_0.14.1-staging_Darwin_x86_64.zip"
    sha256 "18428a614b6f6ef69af35fb39407f45d8d846ad717daf52deaef5328d75a47cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-staging/datree-cli_0.14.1-staging_Linux_x86_64.zip"
    sha256 "7d8941992632eecaa055b1377096ce1a2b133a81eef82b1a11595c0e11e429eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.1-staging/datree-cli_0.14.1-staging_Linux_arm64.zip"
    sha256 "726f0e327d6c239e9bca93a93f91270429d5e6e0401b1c1dbcbd68d97ac57e0b"
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
