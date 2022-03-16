# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.3-rc/datree-cli_1.0.3-rc_Darwin_x86_64.zip"
    sha256 "5068ff055898e5bf42284cb6417d4aced03f2b3867d6001d1d203b197f08d683"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.3-rc/datree-cli_1.0.3-rc_Darwin_arm64.zip"
    sha256 "25bc278983f1ab3e0b7834ad8038b0a05e9cf4ac18986805c3628d41020b96e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.3-rc/datree-cli_1.0.3-rc_Linux_x86_64.zip"
    sha256 "a54f792121f49d0cbb8fcbb59be2d0ec299b4c1408e8915365a6545cecffe4fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.3-rc/datree-cli_1.0.3-rc_Linux_arm64.zip"
    sha256 "040ee8aebec67cb52215e8c651dc7c3c89899ec07c52e75e5fc35b29ee98a84a"
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
