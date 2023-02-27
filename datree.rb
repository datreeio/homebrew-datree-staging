# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.29-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.29-rc/datree-cli_1.8.29-rc_Darwin_x86_64.zip"
    sha256 "d915a42c550aae0d32c848b48c95613a428aec8ee1a48d2b10b4a0793a50a64f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.29-rc/datree-cli_1.8.29-rc_Darwin_arm64.zip"
    sha256 "efafa4e2d1c1cc5996602cadb132667cbef6744e38c241b81fa794788b5cd5bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.29-rc/datree-cli_1.8.29-rc_Linux_x86_64.zip"
    sha256 "80751145c515bb4c69e017576e3f59768d697c7512817794b6cc54deb1362503"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.29-rc/datree-cli_1.8.29-rc_Linux_arm64.zip"
    sha256 "c522609c193cdbb40d2c4b4652972e6e63a3c735c9dcb2d870b3e6241c16d634"
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
