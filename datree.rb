# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.9-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.9-staging/datree-cli_0.14.9-staging_Darwin_x86_64.zip"
    sha256 "97d6de9b0e374cb0d7ca7fd2fe08635023362b256d88f32ad841456e5ebf5598"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.9-staging/datree-cli_0.14.9-staging_Linux_x86_64.zip"
    sha256 "edd9045f34c80102885b8113251d808a5a9f61473115ede1d89deaf914e07fff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.9-staging/datree-cli_0.14.9-staging_Linux_arm64.zip"
    sha256 "c7624de2f94d794d6ac164bfcfa3b529d0ed6f6bcdf74f19cd6da5b2443952ec"
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
