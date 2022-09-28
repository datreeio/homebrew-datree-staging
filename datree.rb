# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.35-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.35-rc/datree-cli_1.6.35-rc_Darwin_x86_64.zip"
    sha256 "c5f3229d6762846747d6c4a2c0c0c7a78e239e06954598da375224bcfbdce105"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.35-rc/datree-cli_1.6.35-rc_Darwin_arm64.zip"
    sha256 "67d9699fdb2fe91a92f9fec5245652eea60b395cdf4a2f0d34c2164d3315ab44"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.35-rc/datree-cli_1.6.35-rc_Linux_x86_64.zip"
    sha256 "fc8be21fddd47fc40d9b0a3da1a2d56b2df986ab14147331de6e7a4f41671c06"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.35-rc/datree-cli_1.6.35-rc_Linux_arm64.zip"
    sha256 "8347b5687e17f304df9c79041548cf62f3053e340b62e7d56c2e9f61664d205c"
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
