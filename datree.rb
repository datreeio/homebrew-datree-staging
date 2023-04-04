# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.63-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.63-rc/datree-cli_1.8.63-rc_Darwin_x86_64.zip"
    sha256 "b8dcd0765063dc8252664226b83f1cc08d47ee4e15b4ae5afcc417d809b3d5e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.63-rc/datree-cli_1.8.63-rc_Darwin_arm64.zip"
    sha256 "a5ef3b5aedd6bcca27f5283567bcf5e79fa4a16a5eac45a15858c18338ff8829"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.63-rc/datree-cli_1.8.63-rc_Linux_x86_64.zip"
    sha256 "1dd217c5219b3499bf07529a9b1597328dd3cf233fa06508072eb07713a3e458"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.63-rc/datree-cli_1.8.63-rc_Linux_arm64.zip"
    sha256 "31dc9672f404e2e8e96d006486a8754a7832b16112e040f6475c229953144b00"
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
