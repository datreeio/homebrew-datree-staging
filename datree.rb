# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.5-rc/datree-cli_1.5.5-rc_Darwin_x86_64.zip"
    sha256 "810a9a39a76c207b4ad54215457821cee890418975623a88cc74a259be6d21bb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.5-rc/datree-cli_1.5.5-rc_Darwin_arm64.zip"
    sha256 "7d5a73c8098dea8bbdb187b7d1e3b44d1dc5e7efdef4db455c1ce80d772d4298"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.5-rc/datree-cli_1.5.5-rc_Linux_x86_64.zip"
    sha256 "ce78c051b1bcf602e73f901600246c51f6a38f089ca1638925274e8d7da0ffd3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.5-rc/datree-cli_1.5.5-rc_Linux_arm64.zip"
    sha256 "79d965a77cb339524f52362fc9b04e257cedbbbfdd3f9cf802fbda31d331f1ee"
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
