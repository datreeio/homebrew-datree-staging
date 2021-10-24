# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.11-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.11-staging/datree-cli_0.14.11-staging_Darwin_x86_64.zip"
    sha256 "9666ec98e021da44bce99d175b07a67da0a759fea929ea88fe352ff6052dca13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.11-staging/datree-cli_0.14.11-staging_Linux_x86_64.zip"
    sha256 "c44e0b33b48c25140969443ea36c96d784377e31fff1adbdf867f913603723e4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.11-staging/datree-cli_0.14.11-staging_Linux_arm64.zip"
    sha256 "1952d3fd6fcf4f2ae7dfb057b0157b201b5e7b8898511478a60f03b91888321d"
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
