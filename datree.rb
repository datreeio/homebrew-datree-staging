# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.5-rc/datree-cli_1.9.5-rc_Darwin_x86_64.zip"
    sha256 "4c026c1e2956369566c582c4f93427aeb021d438c3c2d5ef6a4e794bcc2b1528"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.5-rc/datree-cli_1.9.5-rc_Darwin_arm64.zip"
    sha256 "1452ec571619a03f07297c470ce78ee91d196225937e1f7700042611749ffa9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.5-rc/datree-cli_1.9.5-rc_Linux_x86_64.zip"
    sha256 "a4ce9e79f635c3bdd716cac70e143f2a02c801f57de2c55461a61d0fb6880586"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.5-rc/datree-cli_1.9.5-rc_Linux_arm64.zip"
    sha256 "4bafc335a0c6545ee82bd2940ff215292be51d1107e462834e1cdd7f33b16b45"
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
