# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.22-rc/datree-cli_1.9.22-rc_Darwin_x86_64.zip"
    sha256 "4196ea6f58056c84b7fa0086cd77de9c0bbb45c09756e2d04a797ddda6ca8a44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.22-rc/datree-cli_1.9.22-rc_Darwin_arm64.zip"
    sha256 "c50660948a2d84a8ce8c7447c46a52cec8c72756c95398691ec15f58e9f78a47"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.22-rc/datree-cli_1.9.22-rc_Linux_x86_64.zip"
    sha256 "977c790960301a62b80c0877c1595dc8da6aafd420e84cf6ccb7cd9f5ee5f74c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.22-rc/datree-cli_1.9.22-rc_Linux_arm64.zip"
    sha256 "cfb5ffe7395cc7d5e1db98c87a94e334fd7e03dc02ab5a0dd7b301275f94f818"
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
