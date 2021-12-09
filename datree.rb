# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.65-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.65-rc/datree-cli_0.14.65-rc_Darwin_x86_64.zip"
    sha256 "2d69f96c51880af0550baea4587c40f4091acdaefeb87537b96d95a31cb08306"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.65-rc/datree-cli_0.14.65-rc_Linux_x86_64.zip"
    sha256 "824dff6b5f73f5956a4b586a509045a2ea3af3a5e3f1397d6ee5c1a767fa4181"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.65-rc/datree-cli_0.14.65-rc_Linux_arm64.zip"
    sha256 "4f2fc81a8e2dc1e8c5138c1dcba2d4cbe8abd37873102936bdcdad64701af285"
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
