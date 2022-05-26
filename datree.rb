# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.31-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.31-rc/datree-cli_1.4.31-rc_Darwin_x86_64.zip"
    sha256 "e6f4492a1e621a2b12c58926fd38552db510748d1c9ca1ff86cf239ed18bcd02"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.31-rc/datree-cli_1.4.31-rc_Darwin_arm64.zip"
    sha256 "5b523ef5036703b4605892f0fadf0b9fa01a7a69062833244a939d886f9f277a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.31-rc/datree-cli_1.4.31-rc_Linux_x86_64.zip"
    sha256 "2bb5ed4729cf2c565d5b4f8bccd02520427da4ecba92a4842ae1c0c8163dec9a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.31-rc/datree-cli_1.4.31-rc_Linux_arm64.zip"
    sha256 "4e5f8514bf75ae03077c7c202ef4a3e1b1bee7bc666903f4aa427e29efbc43bb"
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
