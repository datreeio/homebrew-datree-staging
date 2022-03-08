# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.48-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.48-rc/datree-cli_0.15.48-rc_Darwin_x86_64.zip"
    sha256 "9383b5e50765b0ab3fc48f9a0b7436d471d01153ea50f57603836f7f3ab603a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.48-rc/datree-cli_0.15.48-rc_Darwin_arm64.zip"
    sha256 "432e77cbf49ee5defdfcccd054c8206c136a7a17420e33d8110e0ef7db7d6c2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.48-rc/datree-cli_0.15.48-rc_Linux_x86_64.zip"
    sha256 "5a1f0f93fef64b0d2b83cd3c6088dac90adabd68f312bbb57e0a22c6adcb189d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.48-rc/datree-cli_0.15.48-rc_Linux_arm64.zip"
    sha256 "620ba9fe0aec682cc5b83ea00934789a702c8cddbebc431ab4951af06c4b55f1"
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
      tput init
    EOS
  end
end
