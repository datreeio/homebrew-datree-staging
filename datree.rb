# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.63-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.63-rc/datree-cli_0.14.63-rc_Darwin_x86_64.zip"
    sha256 "353ea7b2643f324a0688155dbecf9c1ebe70bc654892f5e60f18eb17e05fe17a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.63-rc/datree-cli_0.14.63-rc_Linux_x86_64.zip"
    sha256 "360b8df17cac96227606c65b463b7b290af87ce8a16f2daba457801a9691bef4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.63-rc/datree-cli_0.14.63-rc_Linux_arm64.zip"
    sha256 "1f6f6a46d6a6659d5594b536d7ced5cbc408a8d93d3e0dd6cbfb875d63056eef"
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
