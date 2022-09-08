# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.18-rc/datree-cli_1.6.18-rc_Darwin_x86_64.zip"
    sha256 "7c3a995a7e6505f838f763b0d8b3aad371e11ef31d565c649db636b520eaca0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.18-rc/datree-cli_1.6.18-rc_Darwin_arm64.zip"
    sha256 "37a88a1de9ee0099f86b81e6fea8134c3de02f3063af36850fb40f739b9aa21d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.18-rc/datree-cli_1.6.18-rc_Linux_x86_64.zip"
    sha256 "44f1b70386b55c85d53fbee7fc789a66e104417f5f8008cb1fdb02310dfb2e63"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.18-rc/datree-cli_1.6.18-rc_Linux_arm64.zip"
    sha256 "e05aff7b8fd566590fde00a34395ad9fcc70cd43f030f652ab4a5ddf2a6735f8"
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
