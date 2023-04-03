# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.51-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.51-rc/datree-cli_1.8.51-rc_Darwin_x86_64.zip"
    sha256 "81c228db4e744f5e45392cfac83352337712445a595027891cd8dc7d93e354df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.51-rc/datree-cli_1.8.51-rc_Darwin_arm64.zip"
    sha256 "17dc258b13c8e9190f20d45c2f5e84f16291ebae7f73bcdadddb13d5005cde48"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.51-rc/datree-cli_1.8.51-rc_Linux_x86_64.zip"
    sha256 "ab1147df8ad5c9c4330313f93eef5f9d51f82af279ca651ee8ebb481660b94a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.51-rc/datree-cli_1.8.51-rc_Linux_arm64.zip"
    sha256 "7bd3881cc3c278e0cd7d1f959628aba92001969740e5efb01c297d0679fd29b0"
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
