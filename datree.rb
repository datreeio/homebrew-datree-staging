# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.29-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.29-rc/datree-cli_1.6.29-rc_Darwin_x86_64.zip"
    sha256 "baadad8c12b7f78af23f167a25dff9de7261d2e752466f2db9582b14e18a77ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.29-rc/datree-cli_1.6.29-rc_Darwin_arm64.zip"
    sha256 "6e3d08d4ba28f584a23e3a7ed6ab6c68c93113649798cadfcc5478a37bdc350c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.29-rc/datree-cli_1.6.29-rc_Linux_x86_64.zip"
    sha256 "d8d4c2395b1776d079a856fea5d9a4eb7f37fc0516d75d880ea1bf501e39fc54"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.29-rc/datree-cli_1.6.29-rc_Linux_arm64.zip"
    sha256 "8f542fa175b300d0172a27a43d8e9708680e3b08f07579ed79dab05c755fd5cd"
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
