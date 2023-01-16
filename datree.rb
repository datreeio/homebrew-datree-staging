# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.14-rc/datree-cli_1.8.14-rc_Darwin_x86_64.zip"
    sha256 "62c839e74a63ca5003983bcb1baa1bb13585a84c06a287e0fd1321f2c1ec3c79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.14-rc/datree-cli_1.8.14-rc_Darwin_arm64.zip"
    sha256 "5905ed78e84b47b5842c6566d8fefe98ebf5f651077003a49401d6c139b2d004"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.14-rc/datree-cli_1.8.14-rc_Linux_x86_64.zip"
    sha256 "502c75ef1b0f28e660cf2459276323e5f0bb8a1c7009de0c40e7de003207f1c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.14-rc/datree-cli_1.8.14-rc_Linux_arm64.zip"
    sha256 "46898456d25eed616e197f1759a9e68f4522de0edc8853d97150ba18f903870c"
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
