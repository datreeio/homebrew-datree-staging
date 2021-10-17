# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.4-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.4-staging/datree-cli_0.14.4-staging_Darwin_x86_64.zip"
    sha256 "767bfadb934908158be0f53d63ed3f188d865da790751160187358e661e90dc4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.4-staging/datree-cli_0.14.4-staging_Linux_x86_64.zip"
    sha256 "a5b48972348c98d42fb5b00d97523487de03297ace7b9651656ae4890ef67b92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.4-staging/datree-cli_0.14.4-staging_Linux_arm64.zip"
    sha256 "d5056aeafdb3e6771425f25081d442cf1ab5774e1b247a746826a77ecc89f9fa"
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
