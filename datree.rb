# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.16-rc/datree-cli_0.15.16-rc_Darwin_x86_64.zip"
    sha256 "cfb4f4f502b8e03aacd1d474685709de432fe5ad4c83da5ef14c94669eef6fcc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.16-rc/datree-cli_0.15.16-rc_Darwin_arm64.zip"
    sha256 "b03bf2c0decd3c590cf3737b2f0328602cfb8489e9b36b346f5a59ac0ab8b587"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.16-rc/datree-cli_0.15.16-rc_Linux_x86_64.zip"
    sha256 "83d4c48a178f9e0c2f75656b89e21604a965fa8b5fbcb4201fc13ad6f595419b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.16-rc/datree-cli_0.15.16-rc_Linux_arm64.zip"
    sha256 "d9d16e140951e37fb6270ac96ef37413d3f616924cf1e36e290d9097aa6e98c2"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
