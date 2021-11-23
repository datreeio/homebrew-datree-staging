# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.52-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.52-rc/datree-cli_0.14.52-rc_Darwin_x86_64.zip"
    sha256 "b4468b7d128c5e890d1984983d8ed11cdb4cd232829592eb1fb5f898dba4d33f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.52-rc/datree-cli_0.14.52-rc_Linux_x86_64.zip"
    sha256 "ece2110a2e2164a16071c94e4d1a59c9868f3d535c1f3b25357c93d220f82295"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.52-rc/datree-cli_0.14.52-rc_Linux_arm64.zip"
    sha256 "d8e2688ffc9715ee860a57da21ec0fad65b3a59e726d306b6d061242b72a51c6"
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
