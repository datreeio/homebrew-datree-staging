# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.47-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.47-rc/datree-cli_1.8.47-rc_Darwin_x86_64.zip"
    sha256 "a4842c8edf3585a5d176e3581fa6ba43c12709956e19edc244a5190070a9bc56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.47-rc/datree-cli_1.8.47-rc_Darwin_arm64.zip"
    sha256 "97f08bd402e0c6f314fd6b6415f97cbbbc9c4f385634d9f915f7467f7a707784"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.47-rc/datree-cli_1.8.47-rc_Linux_x86_64.zip"
    sha256 "4cca23ce36c649d49b3b2497c005130e4600ce5f6e9e68c7accdd2776c3d53d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.47-rc/datree-cli_1.8.47-rc_Linux_arm64.zip"
    sha256 "23dd5ad172ad4242bfcc03badfe1a6b23e675f3fb2dc29a3fdfb61e3cce72e20"
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
