# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.8-rc/datree-cli_1.5.8-rc_Darwin_x86_64.zip"
    sha256 "116d71ab550e3181d252834938f1da4bdb311aa668498a84c2ed27ec896b5d35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.8-rc/datree-cli_1.5.8-rc_Darwin_arm64.zip"
    sha256 "b93cc91611019b9ff9e8c56b23005a1b49fc56c193e7bce9db571421e39d80a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.8-rc/datree-cli_1.5.8-rc_Linux_x86_64.zip"
    sha256 "3a74d316826f1eb1942bd4c935703785faab6124cd8d8bf13f3b7d6af7950363"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.8-rc/datree-cli_1.5.8-rc_Linux_arm64.zip"
    sha256 "9ab15c98968fb5a32f6b54fa3812a6f47a51f068b35c2f7f4c4d1be85a280720"
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
