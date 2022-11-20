# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.2-rc/datree-cli_1.8.2-rc_Darwin_x86_64.zip"
    sha256 "7168edb7ac22f103626733f58248e86c7436d4cd2113eb9ba6ce42ad58099b95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.2-rc/datree-cli_1.8.2-rc_Darwin_arm64.zip"
    sha256 "0566bb32e26100abf2015b4ede3495c28ce8321d8859441113c6a321f46638f2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.2-rc/datree-cli_1.8.2-rc_Linux_x86_64.zip"
    sha256 "12e903f97b7c25cbc2a9e446693b8ff4f527d8ded239b0367bf197f75610c17e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.2-rc/datree-cli_1.8.2-rc_Linux_arm64.zip"
    sha256 "f882630169361826cbbf024bea1e60ccf831742a587dba9acacfcf7e5bb9c278"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
