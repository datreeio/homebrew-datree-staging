# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.82-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.82-rc/datree-cli_0.14.82-rc_Darwin_x86_64.zip"
    sha256 "9b2a330c69527f4d5134737ae674df98caa3d45582385a32163ca5055bbf1fd0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.82-rc/datree-cli_0.14.82-rc_Linux_x86_64.zip"
    sha256 "40d09e5bc9540d79bfe95f94499ee298d5ea614ec2dbc10f15fd63115c3ed9fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.82-rc/datree-cli_0.14.82-rc_Linux_arm64.zip"
    sha256 "ea159c4d20acf0e2e4009d7b01668e8b72c514ef0bca99825c0eb00f69600dbf"
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
