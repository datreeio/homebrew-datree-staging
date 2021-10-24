# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.8-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.8-staging/datree-cli_0.14.8-staging_Darwin_x86_64.zip"
    sha256 "ef46b847f1f11025a96738d36a2819bdbd32978e7c04b7999fa1592ceb0e09c4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.8-staging/datree-cli_0.14.8-staging_Linux_x86_64.zip"
    sha256 "ad75752b37c0d5d685dc0eb3f910b785f016c18568177e39cedbbb913277fd66"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.8-staging/datree-cli_0.14.8-staging_Linux_arm64.zip"
    sha256 "65deae3c80831d07de25bf9b72cbe32f3b15fe47c10587b2e4b89e7954e9831a"
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
