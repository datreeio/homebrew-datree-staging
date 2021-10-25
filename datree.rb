# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.15-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.15-staging/datree-cli_0.14.15-staging_Darwin_x86_64.zip"
    sha256 "6f2b69bb6816a5bd6fbf2b272124090e81168818df6a7c477601ceaf295ab0d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.15-staging/datree-cli_0.14.15-staging_Linux_x86_64.zip"
    sha256 "e1089b723145b1729bba6793f392646353efe3c1f30e3b685b68c1e0017016a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.15-staging/datree-cli_0.14.15-staging_Linux_arm64.zip"
    sha256 "7b48587c19a6f5b8e50716317523b727ad431455b10d658e01dc83eb3e81186b"
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
