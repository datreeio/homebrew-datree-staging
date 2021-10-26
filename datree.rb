# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.0-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Darwin_x86_64.zip"
    sha256 "e83dcc4412f74c374e06d66741b175f9db761d94c35b183b0e8b5ad79c0edf96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Linux_x86_64.zip"
    sha256 "e5a1d984dab473e9f27022e4b363ecc624fea638fee65dbbb6a88a1fcbad9aaa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-rc/datree-cli_0.14.0-rc_Linux_arm64.zip"
    sha256 "1057f6f571f486be1bff8f701cfe1a3a83aa64cbb6315559844f0e004b0aa6eb"
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
