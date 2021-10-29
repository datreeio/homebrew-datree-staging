# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.23-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.23-rc/datree-cli_0.14.23-rc_Darwin_x86_64.zip"
    sha256 "aa8c7b4a77ad4f9099e60e4b827f956c9eccfee3ed724ff10cc8c12ef8112736"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.23-rc/datree-cli_0.14.23-rc_Linux_x86_64.zip"
    sha256 "7280c0e74e3e5cc137a1854115e7dfa702a47bf02e06906794feb4a8885d8694"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.23-rc/datree-cli_0.14.23-rc_Linux_arm64.zip"
    sha256 "25f651ab50d3425080e9f3ebec7ded8d7f331483b84586d6f9b2e211c03bd042"
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
