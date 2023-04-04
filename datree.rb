# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.62-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.62-rc/datree-cli_1.8.62-rc_Darwin_x86_64.zip"
    sha256 "5fe793ff01bd24272dbebcf9d69c17041a834396b38b6ed681fa7faedc3e51ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.62-rc/datree-cli_1.8.62-rc_Darwin_arm64.zip"
    sha256 "d360350a33052a3a84d9c404a1f1cbf062b2c52ca5d7a1f8350273b0129e8e37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.62-rc/datree-cli_1.8.62-rc_Linux_x86_64.zip"
    sha256 "474444a8ebf27a719eb65b353196e9c58be3cf7c4899304db2697a51e9efb335"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.62-rc/datree-cli_1.8.62-rc_Linux_arm64.zip"
    sha256 "ecb46c4c5a635a704ae03918a658e7e2ed8b1603eccf7899177859587f0f94b4"
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
