# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.20-rc/datree-cli_1.5.20-rc_Darwin_x86_64.zip"
    sha256 "a1fb245b36db4cbd950546ef1b7d664a5001bfcc368f8890fc37cb8f22cb4a66"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.20-rc/datree-cli_1.5.20-rc_Darwin_arm64.zip"
    sha256 "4bb7a0277f129e1386e5ffa4c9d4bb29d8f2ef0e92cc076e664a7bab41878d48"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.20-rc/datree-cli_1.5.20-rc_Linux_x86_64.zip"
    sha256 "cf042a1eebd3f172c81fdd1f51f231487784c9557f9f5eb1da0286c1f070f7dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.20-rc/datree-cli_1.5.20-rc_Linux_arm64.zip"
    sha256 "2b529a8a3990c6e07cf285e0084c16b218a0939eae6be73f4937de5fb5197e60"
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
