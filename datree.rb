# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.98-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.98-rc/datree-cli_0.14.98-rc_Darwin_x86_64.zip"
    sha256 "ba12b6c6ff10d29aa3ae73bc59fe0d2c67f4bb9036cbb428c3282f8ecb54498a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.98-rc/datree-cli_0.14.98-rc_Linux_x86_64.zip"
    sha256 "aac8f18c9218c1865672419bc60ddddd8aa17870951b9df232d3ea4f8016d8d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.98-rc/datree-cli_0.14.98-rc_Linux_arm64.zip"
    sha256 "3413fcc1afa4739d67f8822efa163320d8e127e764a06284e910a0868d3b8e55"
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
