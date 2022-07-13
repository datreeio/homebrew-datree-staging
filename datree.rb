# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.32-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.32-rc/datree-cli_1.5.32-rc_Darwin_x86_64.zip"
    sha256 "4c74e9d48c78192cb396e2e1dd93996d68767c582dfaed2901501fbc862b3f3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.32-rc/datree-cli_1.5.32-rc_Darwin_arm64.zip"
    sha256 "e11cc430e6f64fe9239cecb74e1ffa7804695d024198757691f90d02930f2d65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.32-rc/datree-cli_1.5.32-rc_Linux_x86_64.zip"
    sha256 "c841987d05ac2df7f2c17f477e4454d702aabed6c846436753a2cdf52c033fa8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.32-rc/datree-cli_1.5.32-rc_Linux_arm64.zip"
    sha256 "dccdb9c648e8e2f73b18c99d59f0a3675503d23069caac3321066a04acd2dd3c"
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
