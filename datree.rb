# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.7.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.0-rc/datree-cli_1.7.0-rc_Darwin_x86_64.zip"
    sha256 "0e4403d55ca57f3f1ce8091d4a6a5d655b800bbc007cbb5cea7b35e060c08ab2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.7.0-rc/datree-cli_1.7.0-rc_Darwin_arm64.zip"
    sha256 "04c639420d6b2e134c85ab81d73942e289d07a07f57060e596a0100ac343e5e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.0-rc/datree-cli_1.7.0-rc_Linux_x86_64.zip"
    sha256 "cb60b132555b4292814037e118c96539962d5627b20687556b82d9d4ca8aa4d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.7.0-rc/datree-cli_1.7.0-rc_Linux_arm64.zip"
    sha256 "a64aa76f6c7b94ece4a6b64bfffb192a7b86603e27881817d9209493ec66f374"
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
