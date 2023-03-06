# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.35-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.35-rc/datree-cli_1.8.35-rc_Darwin_x86_64.zip"
    sha256 "59331f7f6a7e84a94e8cc40a304aad83bf99878353169e464a86b5107e741200"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.35-rc/datree-cli_1.8.35-rc_Darwin_arm64.zip"
    sha256 "25981b53572b081b47d2cd53ab60e7c89fdf5c4a5500d5a0d7cda0cc09f308ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.35-rc/datree-cli_1.8.35-rc_Linux_x86_64.zip"
    sha256 "f1907b445df2bc8f7dce4fae875a958adcf02e04d5d8b18684572a3d3e5fe921"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.35-rc/datree-cli_1.8.35-rc_Linux_arm64.zip"
    sha256 "1a0d06f2fd5b05d3cdefc75d09d55c63aa80df5fb3c327b27b9f8a6fd8be08b4"
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
