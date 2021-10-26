# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.17-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-rc/datree-cli_0.14.17-rc_Darwin_x86_64.zip"
    sha256 "cf68f86c335a86c16e43fa5955aa442c407dc5cbedc3b5d881013603c0e2f753"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-rc/datree-cli_0.14.17-rc_Linux_x86_64.zip"
    sha256 "507596870ea21ea0e3f439afe2ed6d0b01badb64502ff2fbcf70f11688561870"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-rc/datree-cli_0.14.17-rc_Linux_arm64.zip"
    sha256 "eece1491ac1e18490163f89f73e6df13924544694c95073ba0030ce4e3a83648"
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
