# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.33-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.33-rc/datree-cli_0.14.33-rc_Darwin_x86_64.zip"
    sha256 "c341c2f48f7a40ee82d47015473fc63c0fa6a146532a603d49ee6e4c5b1fe217"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.33-rc/datree-cli_0.14.33-rc_Linux_x86_64.zip"
    sha256 "92cadd710b3cd007870cec7ce9156805a95394284a74ff637c6614f075af6079"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.33-rc/datree-cli_0.14.33-rc_Linux_arm64.zip"
    sha256 "4a672f56bc33a47762cc9bb7acd2a6b032b9cbd381ff987bba892339aa18ff13"
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
