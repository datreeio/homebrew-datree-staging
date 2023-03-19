# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.45-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.45-rc/datree-cli_1.8.45-rc_Darwin_x86_64.zip"
    sha256 "1cf40ec07d3dc0ece41bbe66dc8ac268e62e29b0fda0df634925676fc77b60a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.45-rc/datree-cli_1.8.45-rc_Darwin_arm64.zip"
    sha256 "91f9b58ce65709dadeee0ec52e29b72f66e882e7ce4271d1fa56bbf08be15566"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.45-rc/datree-cli_1.8.45-rc_Linux_x86_64.zip"
    sha256 "145532df02a0f6e2826bf4f25c0427dc23d404769105317fec58e8fde08967bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.45-rc/datree-cli_1.8.45-rc_Linux_arm64.zip"
    sha256 "cedfc62538f54a69b4e341b5a3434445936d88b71998fc119bb00d09cb31fbac"
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
