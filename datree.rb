# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.10-yishay-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-yishay-rc/datree-cli_1.0.10-yishay-rc_Darwin_x86_64.zip"
    sha256 "c0ac3ee1b6d17134e8cb45dcec1f8f43ba95ef8b02e47def7b77b4323282ac17"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-yishay-rc/datree-cli_1.0.10-yishay-rc_Darwin_arm64.zip"
    sha256 "405ec7477d98be32d117b37e1e39797108a238a756f9cd364a9383c5ee41d5da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-yishay-rc/datree-cli_1.0.10-yishay-rc_Linux_x86_64.zip"
    sha256 "1e9bcbbcc2ff2db202ba7b0d2f916cb154fd03c8da63c23bb4c2cb9f232d403c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-yishay-rc/datree-cli_1.0.10-yishay-rc_Linux_arm64.zip"
    sha256 "b963f29e84279bc435f395fe5b96211bfe6022c2fcc9d4162318ef9e74236ed4"
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
      tput init
    EOS
  end
end
