# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.2-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.2-staging/datree-cli_0.14.2-staging_Darwin_x86_64.zip"
    sha256 "8be01b8204df620ed5aeb439e4db557a017d5845b572f624d7e6e690a5b473ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.2-staging/datree-cli_0.14.2-staging_Linux_x86_64.zip"
    sha256 "57b144fffe39b18e02b25c853dbbeacd97e2ec7301a767f5a891b53bfc435a28"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.2-staging/datree-cli_0.14.2-staging_Linux_arm64.zip"
    sha256 "489153e1de1f7ddb514826342fbf0178d3c3443b4e8bfee4f9580aa1250d0cb0"
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
