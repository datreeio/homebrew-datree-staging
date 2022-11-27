# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.4-rc/datree-cli_1.8.4-rc_Darwin_x86_64.zip"
    sha256 "a29675e9b7df7fb072323a8060e97560db5ad5a1dc595d36fd1403f0b113cf1a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.4-rc/datree-cli_1.8.4-rc_Darwin_arm64.zip"
    sha256 "cc075a48d465c4ca5c377dd0ad661869a0853fc2a1f2412a185273aaa0177400"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.4-rc/datree-cli_1.8.4-rc_Linux_x86_64.zip"
    sha256 "3128de62cfdc19e0265bce2ece99e12d0a905cf830f8bd35d0ca0443f2404ad0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.4-rc/datree-cli_1.8.4-rc_Linux_arm64.zip"
    sha256 "eefeb868cb874445ba436eb510dab715e46768445c222849805cbaecbf7be277"
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
