# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "v1.4.40-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.40-rc/datree-cli_v1.4.40-rc_Darwin_x86_64.zip"
    sha256 "4e582b9d79452c94caa2eaed2d2eda922a3c05d2a3753d25c55bba6844b0f0dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/v1.4.40-rc/datree-cli_v1.4.40-rc_Darwin_arm64.zip"
    sha256 "2e370f60a3c63c7ff8bd84b9d69ba69d4cf52d755e39b6d92a228c5cdeb133c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.40-rc/datree-cli_v1.4.40-rc_Linux_x86_64.zip"
    sha256 "bc4d85d29a6b2177e3fbab0eee8520d2ed68b01e2b6a4bb22d9cacc2227b7b3a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/v1.4.40-rc/datree-cli_v1.4.40-rc_Linux_arm64.zip"
    sha256 "641523a6d173b3c665d350abf698d089492a35f931b1cf9dd19259dca7408e1a"
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
