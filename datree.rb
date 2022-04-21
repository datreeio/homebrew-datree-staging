# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.1-rc/datree-cli_1.3.1-rc_Darwin_x86_64.zip"
    sha256 "157a82b9de86e93ff1e3b507b788eb42825a2b274d8ca8306e150d3549c47fac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.1-rc/datree-cli_1.3.1-rc_Darwin_arm64.zip"
    sha256 "5b8f22a62d0877fb3b146bb4bce9dfa6e07d2cce01321bd49750b0b4520d765a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.1-rc/datree-cli_1.3.1-rc_Linux_x86_64.zip"
    sha256 "09a36dfa98f7d9454fec63b1d9f9ac34708539b61867f2d2f58660adb2a0041b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.1-rc/datree-cli_1.3.1-rc_Linux_arm64.zip"
    sha256 "30f0bdc3f7696f42f78f36bd923f0459aa84bce1638e0a764caeabd91056e23c"
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
