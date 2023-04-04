# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.60-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.60-rc/datree-cli_1.8.60-rc_Darwin_x86_64.zip"
    sha256 "8a3fdbecc8668c053c199e5d02874e3310e6aec30789933fe14a29d92d5a336a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.60-rc/datree-cli_1.8.60-rc_Darwin_arm64.zip"
    sha256 "801bae082988f0d48f676ece25b8d96df0693cb595e9484eb95d7a0d322b5b09"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.60-rc/datree-cli_1.8.60-rc_Linux_x86_64.zip"
    sha256 "e94b128dc90bc41908ba874b7f4d0ccfc9d119ed87177d65879141b2ebbe8aab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.60-rc/datree-cli_1.8.60-rc_Linux_arm64.zip"
    sha256 "839caff21a0e98770ce8097d130800034cd9ff8d08de05c90215fef2bc93f2be"
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
